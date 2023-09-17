;; Code to convert the Org files to HTML

(require 'ox-publish)

(setq org-html-validation-link nil
      org-export-with-title nil
      org-html-head-include-scripts nil
      org-html-head-include-default-style nil
      org-export-with-sub-superscripts nil
      org-html-head "<link rel=\"stylesheet\" href=\"https://tankensha.github.io/assets/css/main.css\" />")

;; (eval-after-load "ox-html" (setq org-html-prefer-user-labels t))

(setq org-publish-project-alist
      (list
       (list "tankensha"
             :recursive t
             :base-directory "./src"
             :publishing-function 'org-html-publish-to-html
             :publishing-directory "./public"
             :with-author nil
             :with-toc nil
             :section-numbers nil
             :time-stamp-file nil)))

;; Generate the site output
(org-publish-all t)
