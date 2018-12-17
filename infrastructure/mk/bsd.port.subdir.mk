#-*- mode: Makefile; tab-width: 4; -*-
# ex:ts=4 sw=4 filetype=make:
#	from: @(#)bsd.subdir.mk	5.9 (Berkeley) 2/1/91
#	$OpenBSD: bsd.port.subdir.mk,v 1.111 2018/12/17 18:06:05 espie Exp $
#	FreeBSD Id: bsd.port.subdir.mk,v 1.20 1997/08/22 11:16:15 asami Exp
#
# The include file <bsd.port.subdir.mk> contains the default targets
# for building ports subdirectories. 
#
#
# +++ variables +++
#
# STRIP		The flag passed to the install program to cause the binary
#		to be stripped.  This is to be used when building your
#		own install script so that the entire system can be made
#		stripped/not-stripped using a single knob. [-s]
#
# ECHO_MSG	Used to print all the '===>' style prompts - override this
#		to turn them off [echo].
#
# SUBDIR	A list of subdirectories that should be built as well.
#		Each of the targets will execute the same target in the
#		subdirectories.
#
#
# +++ targets +++
#
#	afterinstall, all, beforeinstall, build, checksum, clean,
#	configure, depend, describe, extract, fetch, fetch-list,
#	install, package, deinstall, reinstall,
#	tags
#

.if defined(FLAVOR)
ERRORS += "Fatal: can't flavor a SUBDIR"
.endif
.if defined(SUBPACKAGE)
ERRORS += "Fatal: can't subpackage a SUBDIR"
.endif

.for f v in bsd.port.mk _BSD_PORT_MK bsd.port.subdir.mk _BSD_PORT_SUBDIR_MK
.  if defined($v)
ERRORS += "Fatal: inclusion of bsd.port.subdir.mk from $f"
.  endif
.endfor

_BSD_PORT_SUBDIR_MK = Done

.if !defined(DEBUG_FLAGS)
STRIP ?= -s
.endif

ARCH ?!= uname -m

.include "${PORTSDIR}/infrastructure/mk/pkgpath.mk"

ECHO_MSG ?= echo

FULLPATH ?= No
.if ${FULLPATH:L} == "yes"
_FULLPATH = true
.else
_FULLPATH = false
.endif

# create a full list of SUBDIRS...
.if empty(PKGPATH)
_FULLSUBDIR := ${SUBDIR}
.else
_FULLSUBDIR := ${SUBDIR:S@^@${PKGPATH}/@g}
.endif
.if defined(STARTAFTER)
STARTDIR = ${STARTAFTER}
SKIPDIR += ${STARTAFTER}
.endif

_SKIP_STUFF = case "$${subdir}" in
.for i in ${SKIPDIR}
_SKIP_STUFF += $i) eval $${echo_msg} "===\> $${subdir} skipped"; continue;; 
.endfor
_SKIP_STUFF += *) ;; esac

.if defined(STARTDIR) && !empty(STARTDIR)
_STARTDIR_SEEN ?= false
.else
_STARTDIR_SEEN ?= true
.endif

.if defined(MATCHDIR)
_SKIP_STUFF+= ; case "$${subdir}" in \
	${MATCHDIR}) ;; \
	*) continue ;; esac
.endif

_subdir_fragment = \
	: $${echo_msg:=${ECHO_MSG:Q}}; \
	: $${target:=${.TARGET}}; \
	for i in ${_SKIPPED:QL}; do \
		eval $${echo_msg} "===\> $$i skipped"; \
	done; \
	_STARTDIR_SEEN=${_STARTDIR_SEEN}; \
	unset SUBDIR SUBDIRLIST || true; \
	export _STARTDIR_SEEN; \
	for subdir in ${_FULLSUBDIR:QL}; do \
		if ! $${_STARTDIR_SEEN}; then \
			case "${STARTDIR}" in \
			$$subdir) \
				_STARTDIR_SEEN=true;; \
			$$subdir*) \
				;; \
			*) \
				continue;; \
			esac; \
		fi; \
		${_SKIP_STUFF}; \
		sawflavor=${_FULLPATH}; \
		if ${_pflavor_fragment}; then \
			eval $${echo_msg} "===\> $$subdir"; \
			if ! (eval $$toset exec ${MAKE} $$target); then \
				eval $${echo_msg} "===\> Exiting $$subdir with an error"; \
				${REPORT_PROBLEM}; \
			fi; \
		else \
			${REPORT_PROBLEM}; \
		fi; \
		_STARTDIR_SEEN=true; \
	done

.if ${DANGEROUS:L} == "yes"
.  for __target in ${_recursive_targets} ${_dangerous_recursive_targets}
${__target}:
	@${_subdir_fragment}
.  endfor
.else
.  for __target in ${_recursive_targets}
${__target}:
	@${_subdir_fragment}
.  endfor

${_dangerous_recursive_targets}:
	@echo "Target $@ generally invoked in a single port dir"
	@echo "If you really want to do it recursively"
	@echo "make $@ DANGEROUS=Yes"
	@exit 1
.endif

.for __target in ${_recursive_depends_targets}

${__target}: 
	@${_depfile_fragment}; echo_msg=:; ${_subdir_fragment}
.endfor

.for __target in ${_recursive_cache_targets}

${__target}: 
	@${_cache_fragment}; ${_subdir_fragment}
.endfor

clean:
.if defined(clean) && ${clean:L:Mdepends}
	@{ target=all-dir-depends; echo_msg=: export _LOCKS_HELD=; \
	${_depfile_fragment}; ${_subdir_fragment}; }| tsort -r| \
	while read subdir; do \
		${_flavor_fragment}; \
		eval $$toset ${MAKE} _CLEANDEPENDS=No clean; \
	done
.else
	@${_subdir_fragment}
.endif

.if defined(ERRORS)
.BEGIN:
.  for _m in ${ERRORS}
	@echo 1>&2 ${_m} "(in ${PKGPATH})"
.  endfor
.  if !empty(ERRORS:M"Fatal\:*") || !empty(ERRORS:M'Fatal\:*')
	@exit 1
.  endif
.endif

.PHONY: ${_recursive_targets} \
	${_recursive_depends_targets} clean readmes
