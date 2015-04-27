;;(require 'org-remember)
(require 'remember)
;;(require 'htmlize)
;;(remember-insinuate)
(define-key global-map "\C-cc" 'org-capture)
(setq org-myb-todo "~/Documents/myb/da-todo/grzm.org")
(setq org-default-notes-file org-myb-todo)
(define-key global-map "\C-ct"
  (lambda () (interactive) (org-capture nil "t")))
(setq org-odd-levels-only t)
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline org-myb-todo "inbox")
         "* TODO %^{Brief description} %^g\n  %i\n Added %U")
        ;;("j" "Journal" entry (file+datetree "~/org/journal.org") "* %?\nEntered on %U\n  %i\n  %a")
))
(org-babel-do-load-languages
 'org-babel-load-languages
 '((clojure . t)
   (sql . t)
   (js . t)
   (ruby . t)))

