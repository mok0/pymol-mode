(defvar pymol-python
  '("cmd"
    "util"))

(defvar pymol-type
  '(
    "cartoon"
    "sticks"
    "everything"
    "all" "store" "recall" "end"
    ))

(defvar pymol-select
  '(
    "chain"
    "resi" "resn"
    "byres"
    "and"
    "or"
    "bound_to"
    ))

(defvar pymol-keywords
  '(
    "alias"
    "align"
    "alter"
    "alter_state"
    "attach"
    "backward"
    "bond"
    "button"
    "clip"
    "cls"
    "color"
    "commands"
    "create"
    "cycle_valence"
    "delete"
    "disable"
    "dist"
    "edit"
    "enable"
    "ending"
    "extend"
    "extract"
    "fetch"
    "fit"
    "forward"
    "frame"
    "fuse"
    "get_view"
    "group"
    "h_add"
    "h_fill"
    "help"
    "hide"
    "intra_fit"
    "intra_rms"
    "intra_rms_cur"
    "isodot"
    "isomesh"
    "load"
    "mask"
    "mdo"
    "middle"
    "mmatrix"
    "move"
    "mplay"
    "mpng"
    "mset"
    "mstop"
    "orient"
    "origin"
    "pair_fit"
    "png"
    "protect"
    "python"
    "quit"
    "ray"
    "rebuild"
    "redo"
    "refresh"
    "reinitialize"
    "remove"
    "remove_picked"
    "replace"
    "reset"
    "rewind"
    "rms"
    "rms_cur"
    "rock"
    "rotate"
    "run"
    "save"
    "scene"
    "select"
    "set"
    "set_color"
    "set_view"
    "show"
    "splash"
    "stereo"
    "symexp"
    "turn"
    "unbond"
    "undo"
    "view"
    "viewport"
    "zoom")
  )

(defvar pymol-colors
  '(
    "white"
    "black"
    "blue"
    "green"
    "red"
    "cyan"
    "yellow"
    "dash"
    "magenta"
    "salmon"
    "lime"
    "slate"
    "hotpink"
    "orange"
    "chartreuse"
    "limegreen"
    "purpleblue"
    "marine"
    "olive"
    "purple"
    "teal"
    "ruby"
    "forest"
    "deepblue"
    "grey"
    "gray"
    "carbon"
    "nitrogen"
    "oxygen"
    "hydrogen"
    "brightorange"
    "sulfur"
    "tv_red"
    "tv_green"
    "tv_blue"
    "tv_yellow"
    "yelloworange"
    "tv_orange"
    "pink"
    "firebrick"
    "chocolate"
    "brown"
    "wheat"
    "violet"
    "lightmagenta"
    "density"
    "paleyellow"
    "aquamarine"
    "deepsalmon"
    "palegreen"
    "deepolive"
    "deeppurple"
    "deepteal"
    "lightblue"
    "lightorange"
    "palecyan"
    "lightteal"
    "splitpea"
    "raspberry"
    "sand"
    "smudge"
    "violetpurple"
    "dirtyviolet"
    "deepsalmon"
    "lightpink"
    "greencyan"
    "limon"
    "skyblue"
    "bluewhite"
    "warmpink"
    "darksalmon"
    "helium"
    "lithium"
    "beryllium"
    "boron"
    "fluorine"
    "neon"
    "sodium"
    "magnesium"
    "aluminum"
    "silicon"
    "phosphorus"
    "chlorine"
    "argon"
    "potassium"
    "calcium"
    "scandium"
    "titanium"
    "vanadium"
    "chromium"
    "manganese"
    "iron"
    "cobalt"
    "nickel"
    "copper"
    "zinc"
    "gallium"
    "germanium"
    "arsenic"
    "selenium"
    "bromine"
    "krypton"
    "rubidium"
    "strontium"
    "yttrium"
    "zirconium"
    "niobium"
    "molybdenum"
    "technetium"
    "ruthenium"
    "hodium"
    "palladium"
    "silver"
    "cadmium"
    "indium"
    "tin"
    "antimony"
    "tellurium"
    "iodine"
    "xenon"
    "cesium"
    "barium"
    "lanthanum"
    "cerium"
    "praseodymium"
    "neodymium"
    "promethium"
    "samarium"
    "europium"
    "gadolinium"
    "terbium"
    "dysprosium"
    "holmium"
    "erbium"
    "thulium"
    "ytterbium"
    "lutetium"
    "hafnium"
    "tantalum"
    "tungsten"
    "rhenium"
    "osmium"
    "iridium"
    "platinum"
    "gold"
    "mercury"
    "thallium"
    "lead"
    "bismuth"
    "polonium"
    "astatine"
    "radon"
    "francium"
    "radium"
    "actinium"
    "thorium"
    "protactinium"
    "uranium"
    "neptunium"
    "plutonium"
    "americium"
    "curium"
    "berkelium"
    "californium"
    "einsteinium"
    "fermium"
    "mendelevium"
    "nobelium"
    "lawrencium"
    "rutherfordium"
    "dubnium"
    "seaborgium"
    "bohrium"
    "hassium"
    "meitnerium"
    "deuterium"
    "lonepair"
    "pseudoatom"))

;; I'd probably put in a default that you want, as opposed to nil
(defvar pymol-tab-width 4 "Width of a tab for PyMol mode")

;; Two small edits.
;; First is to put an extra set of parens () around the list
;; which is the format that font-lock-defaults wants
;; Second, you used ' (quote) at the outermost level where you wanted ` (backquote)
;; you were very close
(defvar pymol-font-lock-defaults
  `((
     ;; stuff between "
     ("\"\\.\\*\\?" . font-lock-string-face)
     ;; ; : , ; { } =>  @ $ = are all special elements
     (":\\|,\\|;\\|{\\|}\\|=>\\|@\\|$\\|=" . font-lock-keyword-face)
     ( ,(regexp-opt pymol-keywords 'words) . font-lock-builtin-face)
     ( ,(regexp-opt pymol-python 'words) . font-lock-constant-face)
     ( ,(regexp-opt pymol-colors 'words) . font-lock-variable-name-face)
     ( ,(regexp-opt pymol-select 'words) . font-lock-function-name-face)
     ( ,(regexp-opt pymol-type 'words) . font-lock-type-face)
     )))

; x font-lock-builtin-face
; font-lock-comment-delimiter-face
; font-lock-comment-face
; x font-lock-constant-face
; font-lock-doc-face
; x font-lock-function-name-face
; x font-lock-keyword-face
; font-lock-negation-char-face
; font-lock-preprocessor-face
; font-lock-reference-face
; font-lock-string-face
; x font-lock-type-face
; x font-lock-variable-name-face
; font-lock-warning-face


(define-derived-mode pymol-mode python-mode "PyMol script"
  "PYMOL mode is a major mode for editing PyMol files"

  ;; you again used quote when you had '((pymol-hilite))
  ;; I just updated the variable to have the proper nesting (as noted above)
  ;; and use the value directly here
  (setq font-lock-defaults pymol-font-lock-defaults)

  ;; when there's an override, use it
  ;; otherwise it gets the default value
  (when pymol-tab-width
    (setq tab-width pymol-tab-width))

  ;; for comments
  ;; overriding these vars gets you what (I think) you want
  ;; they're made buffer local when you set them
  (setq comment-start "#")
  (setq comment-end "")

  (modify-syntax-entry ?# "< b" pymol-mode-syntax-table)
  (modify-syntax-entry ?\n "> b" pymol-mode-syntax-table)

  ;;A gnu-correct program will have some sort of hook call here.
  )
;; clear memory. no longer needed
(setq pymol-keywords nil)
(setq pymol-python nil)
(setq pymol-colors nil)
(setq pymol-select nil)
(setq  pymol-type nil)


(provide 'pymol-mode)
