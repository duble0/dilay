! include( ../common.pri ) {
    error( Can not find .common.pri )
}

TEMPLATE               =  lib
TARGET                 =  dilay
DEPENDPATH             += src 
INCLUDEPATH            += src 
CONFIG                 += staticlib

SOURCES += \
           src/action/carve.cpp \
           src/action/delete-winged-mesh.cpp \
           src/action/modify-winged-mesh.cpp \
           src/action/new-winged-mesh.cpp \
           src/action/on-post-processed-winged-mesh.cpp \
           src/action/subdivide-mesh.cpp \
           src/action/unit.cpp \
           src/action/util.cpp \
           src/adjacent-iterator.cpp \
           src/affected-faces.cpp \
           src/camera.cpp \
           src/carve-brush.cpp \
           src/color.cpp \
           src/config.cpp \
           src/config-conversion.cpp \
           src/configurable.cpp \
           src/dimension.cpp \
           src/history.cpp \
           src/intersection.cpp \
           src/mesh.cpp \
           src/mesh-definition.cpp \
           src/octree.cpp \
           src/opengl.cpp \
           src/partial-action/collapse-face.cpp \
           src/partial-action/delete-edge-face.cpp \
           src/partial-action/flip-edge.cpp \
           src/partial-action/insert-edge-face.cpp \
           src/partial-action/insert-edge-vertex.cpp \
           src/partial-action/modify-winged-edge.cpp \
           src/partial-action/modify-winged-face.cpp \
           src/partial-action/modify-winged-mesh.cpp \
           src/partial-action/modify-winged-vertex.cpp \
           src/partial-action/relax-edge.cpp \
           src/partial-action/smooth.cpp \
           src/partial-action/subdivide-edge.cpp \
           src/partial-action/triangulate-6-gon.cpp \
           src/partial-action/triangulate-quad.cpp \
           src/primitive/aabox.cpp \
           src/primitive/plane.cpp \
           src/primitive/ray.cpp \
           src/primitive/sphere.cpp \
           src/primitive/triangle.cpp \
           src/render-mode.cpp \
           src/renderer.cpp \
           src/scene.cpp \
           src/selection.cpp \
           src/selection-mode.cpp \
           src/shader.cpp \
           src/state.cpp \
           src/subdivision-butterfly.cpp \
           src/time-delta.cpp \
           src/tool.cpp \
           src/tool/carve.cpp \
           src/tool/delete-mesh.cpp \
           src/tool/move.cpp \
           src/tool/new-winged-mesh.cpp \
           src/tool/move-camera.cpp \
           src/tool/subdivide-mesh.cpp \
           src/tool/util/movement.cpp \
           src/util.cpp \
           src/view/axis.cpp \
           src/view/cursor.cpp \
           src/view/gl-widget.cpp \
           src/view/light.cpp \
           src/view/main-widget.cpp \
           src/view/main-window.cpp \
           src/view/menu/winged-mesh.cpp \
           src/view/menu/no-selection.cpp \
           src/view/properties.cpp \
           src/view/properties/button.cpp \
           src/view/properties/selection.cpp \
           src/view/properties/widget.cpp \
           src/view/tool/menu.cpp \
           src/view/tool/menu-parameters.cpp \
           src/view/tool/tip.cpp \
           src/view/util.cpp \
           src/view/vector-edit.cpp \
           src/winged/edge.cpp \
           src/winged/face.cpp \
           src/winged/face-intersection.cpp \
           src/winged/mesh.cpp \
           src/winged/util.cpp \
           src/winged/vertex.cpp \

HEADERS += \
           src/action.hpp \
           src/action/carve.hpp \
           src/action/data.hpp \
           src/action/delete-winged-mesh.hpp \
           src/action/modify-winged-mesh.hpp \
           src/action/new-winged-mesh.hpp \
           src/action/on.hpp \
           src/action/on-post-processed-winged-mesh.hpp \
           src/action/subdivide-mesh.hpp \
           src/action/transformer.hpp \
           src/action/unit.hpp \
           src/action/unit/on.hpp \
           src/action/util.hpp \
           src/adjacent-iterator.hpp \
           src/affected-faces.hpp \
           src/bitset.hpp \
           src/camera.hpp \
           src/carve-brush.hpp \
           src/color.hpp \
           src/config.hpp \
           src/config-conversion.hpp \
           src/configurable.hpp \
           src/dimension.hpp \
           src/fwd-winged.hpp \
           src/history.hpp \
           src/intersection.hpp \
           src/macro.hpp \
           src/maybe.hpp \
           src/mesh.hpp \
           src/mesh-definition.hpp \
           src/octree.hpp \
           src/opengl.hpp \
           src/partial-action/collapse-face.hpp \
           src/partial-action/delete-edge-face.hpp \
           src/partial-action/flip-edge.hpp \
           src/partial-action/insert-edge-face.hpp \
           src/partial-action/insert-edge-vertex.hpp \
           src/partial-action/modify-winged-edge.hpp \
           src/partial-action/modify-winged-face.hpp \
           src/partial-action/modify-winged-mesh.hpp \
           src/partial-action/modify-winged-vertex.hpp \
           src/partial-action/relax-edge.hpp \
           src/partial-action/smooth.hpp \
           src/partial-action/subdivide-edge.hpp \
           src/partial-action/triangulate-6-gon.hpp \
           src/partial-action/triangulate-quad.hpp \
           src/primitive/aabox.hpp \
           src/primitive/plane.hpp \
           src/primitive/ray.hpp \
           src/primitive/sphere.hpp \
           src/primitive/triangle.hpp \
           src/render-mode.hpp \
           src/renderer.hpp \
           src/scene.hpp \
           src/selection.hpp \
           src/selection-mode.hpp \
           src/shader.hpp \
           src/state.hpp \
           src/subdivision-butterfly.hpp \
           src/time-delta.hpp \
           src/tool.hpp \
           src/tool/move-camera.hpp \
           src/tool/util/movement.hpp \
           src/tools.hpp \
           src/util.hpp \
           src/variant.hpp \
           src/view/axis.hpp \
           src/view/cursor.hpp \
           src/view/gl-widget.hpp \
           src/view/light.hpp \
           src/view/main-widget.hpp \
           src/view/main-window.hpp \
           src/view/menu/winged-mesh.hpp \
           src/view/menu/no-selection.hpp \
           src/view/properties.hpp \
           src/view/properties/button.hpp \
           src/view/properties/selection.hpp \
           src/view/properties/widget.hpp \
           src/view/tool/menu.hpp \
           src/view/tool/menu-parameters.hpp \
           src/view/tool/tip.hpp \
           src/view/util.hpp \
           src/view/vector-edit.hpp \
           src/winged/edge.hpp \
           src/winged/face.hpp \
           src/winged/face-intersection.hpp \
           src/winged/mesh.hpp \
           src/winged/util.hpp \
           src/winged/vertex.hpp \
