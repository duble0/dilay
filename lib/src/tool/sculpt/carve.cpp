#include <QCheckBox>
#include <QDoubleSpinBox>
#include "cache.hpp"
#include "tools.hpp"
#include "sculpt-brush.hpp"
#include "view/cursor.hpp"
#include "view/properties.hpp"
#include "view/tool-tip.hpp"
#include "view/util.hpp"

struct ToolSculptCarve::Impl {
  ToolSculptCarve* self;

  Impl (ToolSculptCarve* s) : self (s) {}

  void runSetupBrush (SculptBrush& brush) {
    auto& params = brush.parameters <SBMoveDirectionalParameters> ();

    params.intensityFactor   (this->self->cache ().get <float> ("intensity-factor"   , 0.03f));
    params.innerRadiusFactor (this->self->cache ().get <float> ("inner-radius-factor", 0.5f));
    params.invert            (this->self->cache ().get <bool>  ("invert"             , false));
  }

  void runSetupCursor (ViewCursor& cursor) {
    auto& params = this->self->brush ().constParameters <SBMoveDirectionalParameters> ();

    cursor.hasInnerRadius    (true);
    cursor.innerRadiusFactor (params.innerRadiusFactor ());
  }

  void runSetupProperties (ViewPropertiesPart& properties) {
    auto&       params = this->self->brush ().parameters <SBMoveDirectionalParameters> ();
    ViewCursor& cursor = this->self->cursor ();

    QDoubleSpinBox& innerRadiusEdit = ViewUtil::spinBox ( 0.0f, params.innerRadiusFactor ()
                                                        , 1.0f, 0.1f );
    ViewUtil::connect (innerRadiusEdit, [this,&params,&cursor] (float f) {
      params.innerRadiusFactor (f);
      cursor.innerRadiusFactor (f);
      this->self->cache ().set ("inner-radius-factor", f);
    });
    properties.add (QObject::tr ("Inner radius"), innerRadiusEdit);

    QDoubleSpinBox& intensityEdit = ViewUtil::spinBox ( 0.0f, params.intensityFactor ()
                                                      , 0.1f, 0.01f );
    ViewUtil::connect (intensityEdit, [this,&params] (float i) {
      params.intensityFactor (i);
      this->self->cache ().set ("intensity", i);
    });
    properties.add (QObject::tr ("Intensity"), intensityEdit);

    QCheckBox& invertEdit = ViewUtil::checkBox (QObject::tr ("Invert"), params.invert ());
    ViewUtil::connect (invertEdit, [this,&params] (bool i) {
      params.invert (i);
      this->self->cache ().set ("invert", i);
    });
    properties.add (invertEdit);
  }

  void runSetupToolTip (ViewToolTip& toolTip) {
    toolTip.add ( ViewToolTip::MouseEvent::Left, QObject::tr ("Drag to sculpt"));
    toolTip.add ( ViewToolTip::MouseEvent::Left
                , ViewToolTip::Modifier::Shift, QObject::tr ("Drag to sculpt inverted"));
  }

  ToolResponse runMouseEvent (const QMouseEvent& e) {
    const std::function <void ()> toggleInvert = [this] () {
      this->self->brush ().parameters <SBMoveDirectionalParameters> ().toggleInvert ();
    };
    this->self->carvelikeStroke (e, &toggleInvert);
    return ToolResponse::Redraw;
  }

  ToolResponse runMouseMoveEvent (const QMouseEvent& e) {
    return this->runMouseEvent (e);
  }

  ToolResponse runMousePressEvent (const QMouseEvent& e) {
    return this->runMouseEvent (e);
  }
};

DELEGATE_TOOL_SCULPT (ToolSculptCarve)