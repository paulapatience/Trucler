(cl:in-package #:trucler)

;;; Methods for catching error situations.

(defmethod merge-type (client description type)
  (declare (cl:ignore client type))
  (error 'invalid-description-for-merging-type-information
         :description description))

(defmethod merge-ignore (client description ignore)
  (declare (cl:ignore client ignore))
  (error 'invalid-description-for-merging-ignore-information
         :description description))

(defmethod merge-dynamic-extent (client description)
  (declare (cl:ignore client))
  (error 'invalid-description-for-merging-dynamic-extent-information
         :description description))

(defmethod merge-inline (client description inline)
  (declare (cl:ignore client inline))
  (error 'invalid-description-for-merging-inline-information
         :description description))

(defmethod merge-inline-data (client description inline-data)
  (declare (cl:ignore client inline-data))
  (error 'invalid-description-for-merging-inline-data
         :description description))

(defmethod merge-speed (client description value)
  (declare (cl:ignore client value))
  (error 'invalid-description-for-merging-speed-information
         :description description))

(defmethod merge-compilation-speed (client description value)
  (declare (cl:ignore client value))
  (error 'invalid-description-for-merging-compilation-speed-information
         :description description))

(defmethod merge-debug (client description value)
  (declare (cl:ignore client value))
  (error 'invalid-description-for-merging-debug-information
         :description description))

(defmethod merge-safety (client description value)
  (declare (cl:ignore client value))
  (error 'invalid-description-for-merging-safety-information
         :description description))

(defmethod merge-space (client description value)
  (declare (cl:ignore client value))
  (error 'invalid-description-for-merging-space-information
         :description description))

;;; Main methods.

(defmethod merge-type (client (description type-mixin) type)
  (declare (cl:ignore client))
  (quasi-clone description :type `(and type ,(type description))))

(defmethod merge-ignore (client (description ignore-mixin) ignore)
  (declare (cl:ignore client))
  (quasi-clone description :ignore ignore))

(defmethod merge-dynamic-extent (client (description dynamic-extent-mixin))
  (declare (cl:ignore client))
  (quasi-clone description :dynamic-extent t))

(defmethod merge-inline (client (description inline-mixin) inline)
  (declare (cl:ignore client))
  (quasi-clone description :inline inline))

(defmethod merge-inline-data (client (description inline-data-mixin) inline-data)
  (declare (cl:ignore client))
  (quasi-clone description :inline-data inline-data))

(defmethod merge-speed (client (description speed-mixin) value)
  (declare (cl:ignore client))
  (quasi-clone description :speed value))

(defmethod merge-compilation-speed (client (description compilation-speed-mixin) value)
  (declare (cl:ignore client))
  (quasi-clone description :compilation-speed value))

(defmethod merge-debug (client (description debug-mixin) value)
  (declare (cl:ignore client))
  (quasi-clone description :debug value))

(defmethod merge-safety (client (description safety-mixin) value)
  (declare (cl:ignore client))
  (quasi-clone description :safety value))

(defmethod merge-space (client (description space-mixin) value)
  (declare (cl:ignore client))
  (quasi-clone description :space value))
