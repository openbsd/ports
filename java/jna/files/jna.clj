;;; Basic set of JNA tests for use with Clojure

(gen-interface
 :name jna.CLibrary
 :extends [com.sun.jna.Library]
 :methods [[printf [String] void]])

(def libc (com.sun.jna.Native/loadLibrary "c" jna.CLibrary))
(.printf libc "Hello, World\n")

(defn- get-function [s]
  `(com.sun.jna.Function/getFunction ~(namespace s) ~(name s)))

(defmacro jna-call
  "Call a native library function"
  [return-type function-symbol & args]
  `(.invoke ~(get-function function-symbol) ~return-type (to-array [~@args])))

(jna-call Integer c/printf "-> %d\n" 42)

; Write a macro that wraps a native library function call
(defmacro jna-func
  [ret-type func-symbol]
  `(let [func# ~(get-function func-symbol)]
    (fn [& args#]
      (.invoke func# ~ret-type (to-array args#)))))

(def c-printf (jna-func Integer c/printf))
(c-printf "int: %d\nfloat: %.2f\n" 42 42.0)

(defmacro jna-malloc [size]
  `(let [buffer# (java.nio.ByteBuffer/allocateDirect ~size)
         pointer# (com.sun.jna.Native/getDirectBufferPointer buffer#)]
     (.order buffer# java.nio.ByteOrder/LITTLE_ENDIAN)
     {:pointer pointer# :buffer buffer#}))

(let [struct (jna-malloc 44)]
  (jna-call Integer c/statvfs "/tmp" (:pointer struct))
  (let [fbsize (.getInt (:buffer struct))
        frsize (.getInt (:buffer struct) 4)
        blocks (.getInt (:buffer struct) 8)
        bfree (.getInt (:buffer struct) 12)
        bavail (.getInt (:buffer struct) 16)]

    (c-printf "# ignore statvfs\n")))
