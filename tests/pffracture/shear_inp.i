*** This is an input file for 2d phase field fracture model

[mesh]
  type=abaqus
  file=doublenotch.inp
[end]


[dofs]
name=ux uy d
[end]

[projection]
  name=vonMises Hydro sigxx sigyy sigxy
[end]



[elmts]
  [solids]
    type=miehefrac
    dofs=ux uy d
    mate=frac
    domain=alldomain
  [end]
[end]

[mates]
  [frac]
    type=miehelinear
    params=2.1e2 0.2 2.7e-3 2.0e-2 1.0e-6     1
    //     E     nu  Gc     L      viscosity  UseHist
    // UseHist=1-->use the stagger solution
    // UseHist=0-->use the fully coupled solution
  [end]
[end]

[ics]
  [const]
    type=const
    dof=d
    params=0.0
  [end]
[end]


[bcs]
  [fixUx]
    type=dirichlet
    dof=ux
    boundary=bottom
    value=0.0
  [end]
  [fixUy]
    type=dirichlet
    dof=uy
    boundary=bottom top
    value=0.0
  [end]
  [loadUx]
    type=dirichlet
    dof=ux
    value=1.0*t
    boundary=top
  [end]
[end]

[timestepping]
  type=be
  dt=1.0e-5
  dtmax=1.0e-4
  dtmin=5.0e-7
  endtime=1.0e2
  opts=4
  adaptive=true
[end]
[nonlinearsolver]
  type=newtonls
  r_abs_tol=5.0e-7
  r_rel_tol=1.5e-8
  maxiters=25
[end]


[job]
  type=transient
  debug=dep
  projection=true
[end]
