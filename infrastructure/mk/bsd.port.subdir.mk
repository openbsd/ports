#-*- mode: Makefile; tab-width: 4; -*-
# ex:ts=4 sw=4 filetype=make:
#	from: @(#)bsd.subdir.mk	5.9 (Berkeley) 2/1/91
#	$OpenBSD: bsd.port.subdir.mk,v 1.92 2009/07/26 12:14:05 espie Exp $
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
# OPSYS		Get the operating system type [`uname -s`]
#
# SUBDIR	A list of subdirectories that should be built as well.
#		Each of the targets will execute the same target in the
#		subdirectories.
#
#
# +++ targets +++
#
#	README.html:
#		Creating README.html for package.
#
#	afterinstall, all, beforeinstall, build, checksum, clean,
#	configure, depend, describe, extract, fetch, fetch-list,
#	install, package, readmes, deinstall, reinstall,
#	tags
#

# recent /usr/share/mk/* should include bsd.own.mk, guard for older versions
.if !defined(BSD_OWN_MK)
.  include <bsd.own.mk>
.endif

.if defined(verbose-show)
.MAIN: verbose-show
.elif defined(show)
.MAIN: show
.elif defined(clean)
.MAIN: clean
.else
.MAIN: all
.endif

.if !defined(DEBUG_FLAGS)
STRIP ?= -s
.endif

.if !defined(OPSYS)	# XXX !!
OPSYS = OpenBSD
.endif
ARCH ?!= uname -m

.include "${PORTSDIR}/infrastructure/mk/pkgpath.mk"

ECHO_MSG ?= echo

# create a full list of SUBDIRS...
.if empty(PKGPATH)
_FULLSUBDIR := ${SUBDIR}
.else
_FULLSUBDIR := ${SUBDIR:S@^@${PKGPATH}/@g}
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
TEMPLATES ?= ${PORTSDIR}/infrastructure/templates
.if defined(PORTSTOP)
README = ${TEMPLATES}/README.top
.else
README = ${TEMPLATES}/README.category
.endif

_subdir_fragment = \
	: $${echo_msg:=${ECHO_MSG:Q}}; \
	: $${target:=${.TARGET}}; \
	for i in ${_SKIPPED}; do \
		eval $${echo_msg} "===\> $$i skipped"; \
	done; \
	_STARTDIR_SEEN=${_STARTDIR_SEEN}; \
	export _STARTDIR_SEEN; \
	for subdir in ${_FULLSUBDIR}; do \
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
		${_flavor_fragment}; \
		eval $${echo_msg} "===\> $$subdir"; \
		if ! (eval $$toset exec ${MAKE} $$target); then \
			eval $${echo_msg} "===\> Exiting $$subdir with an error"; \
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

.for __target in ${_recursive_describe_targets}
${__target}:
	@DESCRIBE_TARGET=Yes; export DESCRIBE_TARGET; ${_subdir_fragment}
.endfor

.for __target in ${_recursive_depends_targets}

${__target}: 
	@${_depfile_fragment}; echo_msg=:; ${_subdir_fragment}
.endfor

clean:
.if defined(clean) && ${clean:L:Mdepends}
	@{ target=all-dir-depends; echo_msg=:; \
	${_depfile_fragment}; ${_subdir_fragment}; }| tsort -r| \
	while read subdir; do \
		${_flavor_fragment}; \
		eval $$toset ${MAKE} _CLEANDEPENDS=No clean; \
	done
.else
	@${_subdir_fragment}
.endif
.if defined(clean) && ${clean:L:Mreadmes}
	rm -f ${READMES_TOP}/${PKGPATH}/README.html
.endif

readmes:
	@DESCRIBE_TARGET=Yes; export DESCRIBE_TARGET; ${_subdir_fragment}
	@tmpdir=`mktemp -d ${TMPDIR}/readme.XXXXXX`; \
	trap 'rm -r $$tmpdir' 0 1 2 3 13 15; \
	cd ${.CURDIR} && ${MAKE} TMPDIR=$$tmpdir \
		${READMES_TOP}/${PKGPATH}/README.html

${READMES_TOP}/${PKGPATH}/README.html:
	@mkdir -p ${@D}
	@>${TMPDIR}/subdirs
.for d in ${_FULLSUBDIR}
	@subdir=$d; DESCRIBE_TARGET=yes; export DESCRIBE_TARGET; \
	${_flavor_fragment}; \
	if name=`eval $$toset ${MAKE} _print-packagename`; then \
		comment=`eval $$toset ${MAKE} show=_COMMENT|sed -e 's,^",,' -e 's,"$$,,' |${HTMLIFY}`; \
	else \
		comment=''; \
	fi; \
	cd ${.CURDIR}; \
	echo "<dt><a href=\"${PKGDEPTH}$$dir/$$name.html\">$d</a><dd>$$comment" >>${TMPDIR}/subdirs
.endfor
	@sed -e 's%%CATEGORY%%'`echo ${.CURDIR} | sed -e 's.*/\([^/]*\)$$\1'`'g' \
		-e '/%%DESCR%%/r${.CURDIR}/pkg/DESCR' -e '//d' \
		-e '/%%SUBDIR%%/r${TMPDIR}/subdirs' -e '//d' \
		${README} > $@
	@rm ${TMPDIR}/subdirs

.PHONY: ${_recursive_targets} ${_recursive_describe_targets} \
	${_recursive_depends_targets} clean readmes
