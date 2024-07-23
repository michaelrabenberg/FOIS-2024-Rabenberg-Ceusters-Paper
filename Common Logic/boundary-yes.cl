(cl:comment '
The most current version of this file will always be available at https://github.com/michaelrabenberg/FOIS-2024-Rabenberg-Ceusters-Paper/tree/main
Last updated: 07/22/2024
Authors: Michael Rabenberg - rabenbergm@gmail.com, Werner Ceusters - wceusters@gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/

These are axioms concerned with fiat-surface and continuant-fiat-boundary.
We believe they can be safely included in future versions of BFO, whether as such or as theorems of other axioms.
All axioms are indexed bbb-yes-something.
'

 (cl:text

  (cl:ttl   'boundary-yes'


   (cl:outdiscourse instance-of universal is-matter-of)






(cl:comment "if something is a continuant fiat boundary at SOME temporal instant then something is a material entity at THAT temporal instant [bbb-yes-1a]"
   (forall (a t)
      (if   (and  (instance-of a continuant-fiat-boundary t)
                  (instance-of t temporal-instant t))
                     (exists (b)
                        (instance-of b material-entity t))))
)
    (cl:comment "NOTE: The temporal-instant restriction in the antecedent of [bbb-yes-1a] could be removed if a continuant fiat boundary cannot outlast its 'underlying' material entity.")

  
(cl:comment "if something is a material entity at SOME time then something is a continuant fiat boundary at THAT time [bbb-yes-2a]"
   (forall (a t)
      (if   (instance-of a material-entity t)
                (exists (b)
                  (instance-of b continuant-fiat-boundary t))))
)
  
(cl:comment "if something is an object at SOME time then something is a fiat surface at THAT time [bbb-yes-2b]"
   (forall (a t)
      (if   (instance-of a object t)
                (exists (b)
                  (instance-of b fiat-surface t))))
)

(cl:comment "3a-3d are concerned with matter and the is-matter-of relation.
            Including 3a in BFO would require incorporating matter into the all-universals-are-different axiom [xtf-1] in universal-declaration.cl.
            The matter universal is introduced for the sake of convenience. Axioms in boundary-maybe.cl involving it could more cumbersomely be written without it, with suitable uses of is-matter-of.")


(cl:comment "matter is a universal [bbb-yes-3a]"
   (universal matter)
)

(cl:comment "every matter is a material entity [bbb-yes-3b]"
   (forall (a t)
      (if   (instance-of a matter t)
               (instance-of a material-entity t)))
)

(cl:comment "something is matter at SOME temporal instant iff it is-matter-of something at THAT temporal instant [bbb-yes-3c]"
   (forall (a t)
      (iff  (and  (instance-of t temporal-instant t)
                  (instance-of a matter t))
            (exists (b)
               (is-matter-of a b t))))
)

(cl:comment "is-matter-of has domain material-entity and range material entity [bbb-yes-3d]"
   (forall (a b t)
      (if   (is-matter-of a b t)
               (and  (instance-of a material-entity t)
                     (instance-of b material-entity t)
                     (instance-of t temporal-region t))))
)


)))