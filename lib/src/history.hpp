#ifndef DILAY_HISTORY
#define DILAY_HISTORY

#include "action/transformer.hpp"

class Action;
class ActionUnit;
class Scene;
class WingedMesh;

class History {
  public: 
    DECLARE_BIG3 (History)

    template <typename A>
    A& add () { 
      A* action = new A ();
      this->addAction (action); 
      return *action; 
    }

    template <typename A>
    A& add (Scene& scene, WingedMesh& mesh) { 
      A& action = *new A ();
      this->addAction (new ActionTransformer (scene, mesh, std::move (action)));
      return action; 
    }

    void          addUnit (ActionUnit&&);
    void          reset   ();
    void          undo    ();
    void          redo    ();
    const Action* recent  () const;

  private:
    void addAction (Action*);
    IMPLEMENTATION
};

#endif
