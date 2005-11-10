#-*- mode: Makefile; tab-width: 4; -*-
# ex:ts=4 sw=4 filetype=make:
#	from: @(#)bsd.subdir.mk	5.9 (Berkeley) 2/1/91
#	$OpenBSD: bsd.port.subdir.mk,v 1.72 2005/11/10 15:11:12 naddy Exp $
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

.if defined(show)
.MAIN: show
.elif defined(clean)
.MAIN: clean
.else
.MAIN: all
.endif

.if !defined(DEBUG_FLAGS)
STRIP?=	-s
.endif

.if !defined(OPSYS)	# XXX !!
OPSYS=	OpenBSD
.endif

.include "${PORTSDIR}/infrastructure/mk/pkgpath.mk"

ECHO_MSG?=	echo

REPORT_PROBLEM_LOGFILE?=
.if !empty(REPORT_PROBLEM_LOGFILE)
REPORT_PROBLEM?=echo $$subdir >>${REPORT_PROBLEM_LOGFILE}
.else
REPORT_PROBLEM?=exit 1
.endif

# create a full list of SUBDIRS...
.if empty(PKGPATH)
_FULLSUBDIR:=${SUBDIR}
.else
_FULLSUBDIR:=${SUBDIR:S@^@${PKGPATH}/@g}
.endif

_SKIPPED=
.for i in ${SKIPDIR}
_SKIPPED:+=${_FULLSUBDIR:M$i}
_FULLSUBDIR:=${_FULLSUBDIR:N$i}
.endfor


_subdir_fragment= \
	: $${echo_msg:=${ECHO_MSG:Q}}; \
	: $${target:=${.TARGET}}; \
	for i in ${_SKIPPED}; do \
		eval $${echo_msg} "===\> $$i skipped"; \
	done; \
	for subdir in ${_FULLSUBDIR}; do \
		${_flavor_fragment}; \
		eval $${echo_msg} "===\> $$subdir"; \
		set +e; \
		if ! eval  $$toset ${MAKE} $$target; then \
			${REPORT_PROBLEM}; \
		fi; \
	done; set -e

.for __target in all fetch package fake extract patch configure \
		 build describe distclean deinstall install update \
		 reinstall checksum show fetch-makefile \
		 link-categories unlink-categories regress lib-depends-check \
		 newlib-depends-check homepage-links manpages-check license-check \
		 print-package-signature

${__target}:
	@${_subdir_fragment}
.endfor

.for __target in all-dir-depends build-dir-depends run-dir-depends

${__target}: 
	@${_depfile_fragment}; echo_msg=:; ${_subdir_fragment}
.endfor

clean:
.if defined(clean) && ${clean:L:Mdepends}
	@{ target=all-dir-depends; echo_msg=:; \
	${_depfile_fragment}; ${_subdir_fragment}; }| tsort -r|while read subdir; do \
		${_flavor_fragment}; \
		eval $$toset ${MAKE} _CLEANDEPENDS=No clean; \
	done
.else
	@${_subdir_fragment}
.endif
.if defined(clean) && ${clean:L:Mreadmes}
	rm -f ${.CURDIR}/README.html
.endif

readmes:
	@${_subdir_fragment}
	@rm -f ${.CURDIR}/README.html
	@cd ${.CURDIR} && exec ${MAKE} README.html

TEMPLATES ?= ${PORTSDIR}/infrastructure/templates
.if defined(PORTSTOP)
README=	${TEMPLATES}/README.top
.else
README=	${TEMPLATES}/README.category
.endif

README.html:
	@>$@.tmp
.for d in ${_FULLSUBDIR}
	@subdir=$d; ${_flavor_fragment}; \
	name=`eval $$toset ${MAKE} _print-packagename`; \
	case $$name in \
		README) comment='';; \
		*) comment=`eval $$toset ${MAKE} show=_COMMENT|sed -e 's,^",,' -e 's,"$$,,' |${HTMLIFY}`;; \
	esac; \
	cd ${.CURDIR}; \
	echo "<dt><a href=\"${PKGDEPTH}$$dir/$$name.html\">$d</a><dd>$$comment" >>$@.tmp
.endfor
	@cat ${README} | \
		sed -e 's%%CATEGORY%%'`echo ${.CURDIR} | sed -e 's.*/\([^/]*\)$$\1'`'g' \
			-e '/%%DESCR%%/r${.CURDIR}/pkg/DESCR' -e '//d' \
			-e '/%%SUBDIR%%/r$@.tmp' -e '//d' \
		> $@
	@rm $@.tmp

_print-packagename:
	@echo "README"

.PHONY: all fetch package fake extract configure \
	build describe distclean deinstall install update \
	reinstall checksum show fetch-makefile \
	link-categories unlink-categories regress lib-depends-check \
	newlib-depends-check \
	homepage-links manpages-check license-check \
	all-dir-depends build-dir-depends run-dir-depends \
	clean readmes _print-packagename print-package-signature
