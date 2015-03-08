#ifndef DILAY_PARTIAL_ACTION_RELAX_EDGE
#define DILAY_PARTIAL_ACTION_RELAX_EDGE

#include "action/on-winged-mesh.hpp"
#include "macro.hpp"

class WingedMesh;
class WingedEdge;
class AffectedFaces;

class PARelaxEdge : public ActionOnWMesh {
  public: 
    DECLARE_BIG3 (PARelaxEdge)

    void run (WingedMesh&, WingedEdge&, AffectedFaces&);

  private:
    void runUndo (WingedMesh&) const;
    void runRedo (WingedMesh&) const;

    IMPLEMENTATION
};

#endif
