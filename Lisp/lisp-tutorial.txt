
;==============================================================
;This is a lisp tutorial
;==============================================================

;Let's do the classic hello world
(print "Hello, world!, this is a simple tutorial of lisp");
;Note that everything behind (;) is a commentary

;===================
; Arithmetics
;===================
(print "Let's do some arithmetics:")
(print "5 + 6 = "); This is how we add
(write (+ 5 6))
(print "5 - 6 = ")
(write (- 5 6))
(print "5 * 6 = ")
(write (* 5 6)); This is how we do multiplication 
(print "30 / 6 = ")
(write (/ 30 5))

;===================
; Attribution
;=================== 
(terpri); This is a line break
(print "Let's attribute values to some variables")
(print "the variable will be 'a'")
(setq a 5); This is how we store the value of 5 in a variable
(print " the value of a = ")
(write a)
(print "the double of a = ")
(write (* 2 a))

;===================
;Type of Variables
;===================
(terpri)
(print "Lets see the type of some variables")

;Let's first create some variables
(setq a 10)
(setq b 34.567)
(setq c nil)
(setq d 11.0e+4)
(setq e 124/2)
(setq f t)
(setq g nil)

(print "a is:")
(print (type-of a)); That's how we know the type 
(print "b is:")
(print (type-of b))
(print "c is:")
(print (type-of c))
(print "d is:") 
(print (type-of d))
(print "e is:") 
(print (type-of e))
(print "f is:") 
(print (type-of f))
(print "g is:") 
(print (type-of g))

;=========================
; Relational Operators
;=========================
(terpri)
(print "Let's do comparisons")
(print "Is 5 > 2 ?")
(write (> 5 2)) 
(print "Is 5 < 2 ?")
(write (< 5 2)) 
(print "Is 5 == 2 ?")
(write (= 5 2)) 

;=========================
; Logic Operators
;=========================
(terpri)
(print "Let's do boolean")
(setq a t) ; let a = true 
(setq b t)
(setq c nil); let c = false
(setq d nil)

(terpri)
(format t "a = ~a, not a = ~a" a (not a))

(terpri)
(format t "a = ~a, b = ~a, a and b = ~a" a b (and a b))
(terpri)
(format t "a = ~a, b = ~a, a and c = ~a" a c (and a c))

(terpri)
(format t "a = ~a, b = ~a, a or b = ~a" a b (or a b))
(terpri)
(format t "a = ~a, b = ~a, a or c = ~a" a c (or a c))


;=========================
; Functions
;=========================

(terpri)
(print "Let's create a function to calculate de area of a circle, given its radius")
(defmacro circle-area ; Name of the function
(radius); Parameters 
(* 3.14159 (* radius radius)) ; What will be done with the parameters 

); End of the function
(terpri)
(setq r 4); set the size of radius 
(setq a (circle-area )); application of the function.
(format t "the area of a circle of radius 4 = ~a" a ) ; Example of use 

;=========================
; Conditional
;=========================

(terpri)
(print "Let's make an conditional")

(setq a 10)

(terpri)
(if (> a 5)
    (format t "a is greater than 5"); Will execute this if true
    (format t "a is not greater than 5")); Will execute this if false 


;=========================
; Loop
;=========================

(terpri)
(print "Let's make a loop")
(terpri)
(loop for i from 1 to 10 do
  (terpri)(format t "iteration number ~a" i) ; What the loop will execute

)
