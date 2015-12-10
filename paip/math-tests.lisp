;; Passed tests:
(equal (simp '(2 + 2)) 4)
(equal (simp '( x ^ cos pi)) '(1 / x))
(equal (simp '(5 * 20 + 30 + 7)) 137)

;; Failed tests:
(equal (simp '( d ( x + x ) / d x )) 2)
(equal (simp '(d (a * x ^ 2 + b * x + c) / d x)) 2)
(equal (simp '( d ( ( a * x ^ 2 + b * x + c) / x) / d x)) '( ( ( ( A * (X 2 ) ) + ( ( B * X I + C)) - (X * ( ( 2 * (A * XI) + B ) ) )))))
(equal (simp '( l o g ( ( d ( x + x ) / d x ) / 2 ) )) 0)
(equal (simp '(d (3 * x + (cos x) / x) / d x)) '((((cos x) - (x * (- (sin x))) / (x ^ 2)) + 3)))
(equal (simp '(d (3 * x ^ 2 + 2 * x + 1) / d x)) '((6 * x) + 2))
(equal (simp '(sin (x + x) ^ 2 + cos(d x ^ 2 / d x) ^ 2)) 1)
(equal (simp '( l o g ( x + x ) - l o g x )) '(log 2))
(equal (simp '(d ((cos x) / x) / d x)) '((((COS X) - ( X * ( - (SIN X ) ) ) ) / ( X ^ 2))))
(equal (simp '(sin ( x + x ) * sin (d x ^ 2 / d x) + cos(2 * x ) * cos(x * d 2 * y / d y ) )) 1)
(equal (simp '(y / z * (5 * x - (4 + 1) * X))) 0)
(equal (simp '(Int x * sin(x ^ 2) d x)) '(1/2 * (- (COS (X ^ 2)))))
