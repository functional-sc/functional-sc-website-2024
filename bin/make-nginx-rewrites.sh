#!/usr/bin/env bb

(ns process-files
  (:require [babashka.fs :as fs]
            [clojure.java.io :as io]
            [clojure.string :as str]))

(def rewrite-template "    location = /%s {
         rewrite /%s https://www.functional.sc/#/page/%s ;
    }")

(defn process-file [file]
  (comment println "checking file:" (str file)) ; debug
  (let [content (slurp (str file))]
    (when-let [[_ _ url] (re-find #"\b(custom-url::\s*([^\s]+))" content)]
      (let [ new-url    (-> file
                            str
                            fs/file-name
                            str/lower-case
                            (str/replace #"\s" "%20")
                            (str/replace #"\.md$" ""))]
        (println (format rewrite-template url url new-url)) ))))

(defn process-directory [dir]
  (comment println "Processing directory:" dir) ; debug
  (doseq [file (fs/list-dir dir)]
    (when (and (fs/regular-file? file)
               (= "md" (fs/extension file)))
      (process-file file))))

;; call main with a directory path
(defn -main [& args]
  (if-let [dir (first (first args))]
    (if (fs/directory? (str dir))
      (process-directory dir)
      (println "# ERROR: provided path is not a directory"))
    (println "# ERROR: supply a directory path")))

;; Run the script with a directory path as an argument
(-main *command-line-args*)
