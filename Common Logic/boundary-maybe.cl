(cl:comment '
The most current version of this file will always be available at https://github.com/michaelrabenberg/FOIS-2024-Rabenberg-Ceusters-Paper/tree/main
Last updated: 07/22/2024
Authors: Michael Rabenberg - rabenbergm@gmail.com, Werner Ceusters - wceusters@gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/

These are axioms concerned with fiat-surface and continuant fiat boundary that we believe worthy of consideration for inclusion in future versions of BFO, whether as such or as theorems of other added axioms, but that we believe inappropriate for boundary-yes.cl.
All axioms are indexed bbb-maybe-something.
In explanatory comments, read references to *logical strength*, *entailment*, and so on as presupposing extant BFO axioms.

'

 (cl:text

  (cl:ttl   'boundary-maybe'


   (cl:outdiscourse instance-of located-in continuant-part-of proper-continuant-part-of hugs is-matter-of universal exists-at)

(cl:comment "Axioms subindexed 1a1-2b2 are arranged roughly in increasing order of logical strength.")

(cl:comment "if something is a fiat surface at SOME temporal instant then it is LOCATED IN a material entity at THAT temporal instant [bbb-maybe-1a1]"
    (forall (a t)
      (if   (and  (instance-of a fiat-surface t)
                  (instance-of t temporal-instant t))
               (exists (b)
                     (and  (instance-of b material-entity t)
                           (located-in a b t)))))
)

(cl:comment "if something is a fiat surface at SOME time then it is LOCATED IN a material entity at THAT time [bbb-maybe-1a2]"
    (forall (a t)
      (if   (instance-of a fiat-surface t)
               (exists (b)
                     (and  (instance-of b material-entity t)
                           (located-in a b t)))))
)

(cl:comment "if something is a fiat surface at SOME temporal instant then it is LOCATED IN an object at THAT temporal instant [bbb-maybe-1b1]"
    (forall (a t)
      (if   (and  (instance-of a fiat-surface t)
                  (instance-of t temporal-instant t))
               (exists (b)
                     (and  (instance-of b object t)
                           (located-in a b t)))))
)

(cl:comment "if something is a fiat surface at SOME time then it is LOCATED IN an object at THAT time [bbb-maybe-1b2]"
    (forall (a t)
      (if   (instance-of a fiat-surface t)
               (exists (b)
                     (and  (instance-of b object t)
                           (located-in a b t)))))
)

(cl:comment "if something is a fiat surface at SOME temporal instant then it is CONTINUANT PART OF a material entity at THAT temporal instant [bbb-maybe-2a1]"
    (forall (a t)
      (if   (and  (instance-of a fiat-surface t)
                  (instance-of t temporal-instant t))
                (exists (b)
                  (and  (instance-of b material-entity t)
                        (continuant-part-of a b t)))))
)

(cl:comment "if something is a fiat surface at SOME time then it is CONTINUANT PART OF a material entity at THAT time [bbb-maybe-2a2]"
    (forall (a t)
      (if   (instance-of a fiat-surface t)
                (exists (b)
                  (and  (instance-of b material-entity t)
                        (continuant-part-of a b t)))))
)

(cl:comment "if something is a fiat surface at SOME temporal instant then it is CONTINUANT PART OF an object at THAT temporal instant [bbb-maybe-2b1]"
    (forall (a t)
      (if   (and  (instance-of a fiat-surface t)
                  (instance-of t temporal-instant t))
                (exists (b)
                  (and  (instance-of b object t)
                        (continuant-part-of a b t)))))
)

(cl:comment "if something is a fiat surface at SOME time then it is CONTINUANT PART OF an object at THAT time [bbb-maybe-2b2]"
    (forall (a t)
      (if   (instance-of a fiat-surface t)
                (exists (b)
                  (and  (instance-of b object t)
                        (continuant-part-of a b t)))))
)

(cl:comment "Logical strengthenings of 3a involving located-in and continuant-part-of are false, so we do not include them.
            For example, a continuant fiat boundary associated with an air corridor is not located in or continuant part of a material entity.")

(cl:comment "if something is a continuant fiat boundary at SOME time then something is a material entity at THAT time [bbb-maybe-3a]"
    (forall (a t)
      (if   (instance-of a continuant-fiat-boundary t)
                (exists (b)
                  (instance-of b material-entity t))))
)

(cl:comment "4b is logically stronger than 4a.
            We think weakened variants of 4a and 4b containing a temporal-instant restriction in their ancedents are no better motivated than 4a and 4b, so we do not include such weakened variants.")

(cl:comment "if something is a material entity at SOME time then a continuant fiat boundary is LOCATED IN it at THAT time [bbb-maybe-4a]"
   (forall (a t)
      (if   (instance-of a material-entity t)
                (exists (b)
                  (and  (instance-of b continuant-fiat-boundary t)
                        (located-in b a t)))))
)

(cl:comment "if something is a material entity at SOME time then a continuant fiat boundary is CONTINUANT PART OF it at THAT time [bbb-maybe-4b]"
   (forall (a t)
      (if   (instance-of a material-entity t)
                (exists (b)
                  (and  (instance-of b continuant-fiat-boundary t)
                        (continuant-part-of b a t)))))
)

(cl:comment "5b is logically stronger than 5a.
            We think weakened variants of 5a and 5b containing a temporal-instant restriction in their ancedents are no better motivated than 5a and 5b, so we do not include such weakened variants.")

(cl:comment "if something is an object at SOME time then a fiat surface is LOCATED IN it at THAT time [bbb-maybe-5a]"
   (forall (a t)
      (if   (instance-of a object t)
                (exists (b)
                  (and  (instance-of b fiat-surface t)
                        (located-in b a t)))))
)
  
(cl:comment "if something is an object at SOME time then a fiat surface is CONTINUANT PART OF it at THAT time [bbb-maybe-5b]"
   (forall (a t)
      (if   (instance-of a object t)
                (exists (b)
                  (and  (instance-of b fiat-surface t)
                        (continuant-part-of b a t)))))
)

(cl:comment "6a-6c are candidates for definitions of some relations and universals at issue in the axioms to follow and a relevant universal declaration.
            The universal declaration for matter is in boundary-yes.cl, so it is not included here.")

(cl:comment "maximal fiat surface defined [bbb-maybe-6a]"
   (forall (a t)
      (iff  (instance-of a maximal-fiat-surface t)
            (and  (instance-of a fiat-surface t)
                  (not  (exists (b)
                              (and  (instance-of b fiat-surface t)
                                    (proper-continuant-part-of a b t)))))))
)

(cl:comment "maximal fiat surface is a universal [bbb-maybe-6b]"
   (universal maximal-fiat-surface)
)

(cl:comment "is-matter-of defined [bbb-maybe-6c]"
   (forall (a b t)
      (iff  (is-matter-of a b t)
                (and (instance-of a material-entity t)
                     (continuant-part-of a b t)
                     (not  (exists (s1)
                              (and  (instance-of s1 site t)
                                    (continuant-part-of s1 a t))))
                     (forall (aa)
                        (if   (and  (not  (= aa a))
                                    (instance-of aa material-entity t)
                                    (continuant-part-of aa b t)
                                    (not  (exists (s2)
                                             (and  (instance-of s2 site t)
                                                   (continuant-part-of s2 aa t)))))
                                 (proper-continuant-part-of aa a t))))))
)

(cl:comment "7a-7g are candidates for domain-range restrictions on the hugs relation.
            They are organized roughly in increasing order of logical strength.
            7a is the most permissive one and is our preferred one.")

(cl:comment "hugs has domain continuant-fiat-boundary and range material-entity or site [bbb-maybe-7a]"
   (forall (a b t)
      (if  (hugs a b t)
            (and  (instance-of a continuant-fiat-boundary t)
                  (or   (instance-of b material-entity t)
                        (instance-of b site t))
                  (instance-of t temporal-region t))))
)

(cl:comment "hugs has domain continuant-fiat-boundary and range material-entity [bbb-maybe-7b]"
   (forall (a b t)
      (if  (hugs a b t)
            (and  (instance-of a continuant-fiat-boundary t)
                  (instance-of b material-entity t)
                  (instance-of t temporal-region t))))
)

(cl:comment "hugs has domain continuant-fiat-boundary and range matter [bbb-maybe-7c]"
   (forall (a b t)
      (if  (hugs a b t)
            (and  (instance-of a continuant-fiat-boundary t)
                  (instance-of b matter t)
                  (instance-of t temporal-region t))))
)
   (cl:comment "NOTE that boundary-yes.cl contains an axiom saying that every matter is a material entity, so 7c is logically stronger than 7b given boundary-yes.cl.")

(cl:comment "hugs has domain fiat-surface and range material-entity [bbb-maybe-7d]"
   (forall (a b t)
      (if  (hugs a b t)
            (and  (instance-of a fiat-surface t)
                  (instance-of b material-entity t)
                  (instance-of t temporal-region t))))
)

(cl:comment "hugs has domain fiat-surface and range matter [bbb-maybe-7e]"
   (forall (a b t)
      (if  (hugs a b t)
            (and  (instance-of a fiat-surface t)
                  (instance-of b matter t)
                  (instance-of t temporal-region t))))
)

(cl:comment "hugs has domain maximal-fiat-surface and range matter [bbb-maybe-7f]"
   (forall (a b t)
      (if  (hugs a b t)
            (and  (instance-of a maximal-fiat-surface t)
                  (instance-of b material-entity t)
                  (instance-of t temporal-region t))))
)

(cl:comment "hugs has domain maximal-fiat-surface and range matter [bbb-maybe-7g]"
   (forall (a b t)
      (if  (hugs a b t)
            (and  (instance-of a maximal-fiat-surface t)
                  (instance-of b matter t)
                  (instance-of t temporal-region t))))
)

(cl:comment "8a-8i are various theses pertaining to maximal-fiat-surface and hugs.
            Variants of these theses pertaining to fiat-surface or continuant-fiat-boundary are also imaginable but are not included here.")

(cl:comment "every fiat surface is a continuant part of a maximal fiat surface [bbb-maybe-8a]"
   (forall (a t)
      (if   (instance-of a fiat-surface t)
                (exists (b)
                  (and  (instance-of b maximal-fiat-surface t)
                        (continuant-part-of a b t)))))
)

(cl:comment "if something is a maximal fiat surface at a temporal instant, then it hugs an entity at that temporal instant [bbb-maybe-8b]"
   (forall (a t)
      (if  (and   (instance-of a maximal-fiat-surface t)
                  (instance-of t temporal-instant t))
                     (exists (b)
                        (hugs a b t))))
)

(cl:comment "if something is a maximal fiat surface at a time, then it hugs an entity at that time [bbb-maybe-8c]"
   (forall (a t)
      (if  (instance-of a maximal-fiat-surface t)
               (exists (b)
                  (hugs a b t))))
)

(cl:comment "every maximal fiat surface that hugs an entity at a given time hugs this entity alone at this time [bbb-hugs-8d]"
   (forall (a b t)
      (if  (and (instance-of a maximal-fiat-surface t)
                (hugs a b t))
                    (forall (c)
                        (if  (hugs a c t)
                              (= c b)))))
)

(cl:comment "every entity that is hugged by a maximal fiat surface at a given time is hugged by exactly one maximal fiat surface at this time [bbb-maybe-8e]"
   (forall (a b t)
      (if  (and   (instance-of a maximal-fiat-surface t)
                  (hugs a b t))
                        (forall (c)
                           (if   (and  (instance-of c maximal-fiat-surface t)
                                       (hugs c b t))
                                          (= c a)))))
)

(cl:comment "if a maximal fiat surface ever hugs an object then this maximal fiat surface hugs this object as long as this object exists [bbb-maybe-8f]"
   (forall (a b)
      (if   (exists (t1)
              (and  (instance-of a maximal-fiat-surface t1)
                    (instance-of b object t1)
                    (hugs a b t1)))
                      (forall (t2)
                            (if (exists-at b t2)
                                  (hugs a b t2)))))
)

(cl:comment "if a maximal fiat surface ever hugs an object then this maximal fiat surface never hugs anything else [bbb-maybe-8g]"
   (forall (a b)
      (if   (exists (t1)
              (and  (instance-of a maximal-fiat-surface t1)
                    (instance-of b object t1)
                    (hugs a b t1)))
                      (forall (c t2)
                            (if (not   (= c b))
                                    (not  (hugs a c t2))))))
)

(cl:comment "if a maximal fiat surface hugs something then it is a continuant part of this thing [bbb-maybe-8h]"
   (forall (a b t)
      (if  (and   (instance-of a maximal-fiat-surface t)
                  (hugs a b t))
                     (continuant-part-of a b t)))
)

(cl:comment "if something hugs something then it is a continuant part of this thing [bbb-maybe-8i]"
   (forall (a b t)
      (if  (hugs a b t)
               (continuant-part-of a b t)))
)


)))