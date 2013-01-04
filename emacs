;; set the default text coding system
(setq default-buffer-file-coding-system 'utf-8)

(prefer-coding-system 'utf-8)

;;将clojure-emacs设置到加载路径
(add-to-list 'load-path "~/.emacs.d/path/to/clojure-emacs")
(require 'clojure-emacs-init)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get 'sync)

(add-to-list 'load-path "~/.emacs.d/el-get/undo-tree")
(require 'undo-tree)
(global-undo-tree-mode)
