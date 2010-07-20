(defgeneric my-generic (x))

(defmethod my-generic ((x integer)) (* x x))

(defmethod my-generic ((x string)) (string-upcase x))

(defmethod my-generic ((x t)) (cons x x))
