" pf syntax file
" Language:	OpenBSD packet filter (pf) configuration
" Maintainer:	Camiel Dobbelaar <cd@sentia.nl>
" Last Change:	2002 Jul 12

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=-
setlocal iskeyword+=$
setlocal iskeyword+=.
setlocal iskeyword+=_

syn keyword	pfCmd		binat block nat pass rdr scrub set
syn keyword	pfLimit		frags states
syn keyword	pfOptim		aggressive conservative default
syn keyword	pfOptim		high-latency normal satellite
syn keyword	pfSet		limit loginterface optimization timeout
syn keyword	pfTimeout	icmp.error icmp.first other.first other.multiple
syn keyword	pfTimeout	tcp.closed tcp.closing tcp.established
syn keyword	pfTimeout	tcp.finwait tcp.first tcp.opening
syn keyword	pfTimeout	udp.first udp.multiple udp.single
syn keyword	pfTodo		TODO XXX contained
syn keyword	pfWildAddr	all any
syn match	pfComment	/#.*$/ contains=pfTodo
syn match	pfCont		/\\$/
syn match	pfErrClose	/}/
syn match	pfErrOpen	/{/ contained
syn match	pfIPv4		/\<\d\{1,3}\.\d\{1,3}\.\d\{1,3}\.\d\{1,3}\>/
syn match	pfNetmask	/\/\d\+\>/
syn match	pfNum		/\<\d\+\>/
syn match	pfVar		/\<$[a-zA-Z][a-zA-Z0-9_]*\>/
syn match	pfVarAssign	/^\s*[a-zA-Z][a-zA-Z0-9_]*\s*=\s*"/me=e-1 contains=pfVarInit
syn match	pfVarInit	/\<[a-zA-Z][a-zA-Z0-9_]*\>/ contained
syn region	pfList		start=/{/ms=s+1 end=/}/ transparent contains=ALLBUT,pfErrClose,pfTodo,pfVarInit
syn region	pfString	start=/"/ end=/"/ transparent contains=pfCont,pfErrClose,pfIPv4,pfList,pfNum,pfWildAddr

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_c_syn_inits")
  if version < 508
    let did_c_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink pfCmd		Statement
  HiLink pfComment	Comment
  HiLink pfCont		Statement
  HiLink pfErrClose	Error
  HiLink pfErrOpen	Error
  HiLink pfIPv4		Type
  HiLink pfLimit	Identifier
  HiLink pfNetmask	Constant
  HiLink pfNum		Constant
  HiLink pfOptim	Constant
  HiLink pfSet		Special
  HiLink pfTimeout	Identifier
  HiLink pfTodo		Todo
  HiLink pfVar		Identifier
  HiLink pfVarInit	Identifier
  HiLink pfWildAddr	Type

  delcommand HiLink
endif

let b:current_syntax = "pf"
