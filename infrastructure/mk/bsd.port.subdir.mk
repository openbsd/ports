#	from: @(#)bsd.subdir.mk	5.9 (Berkeley) 2/1/91
#	$OpenBSD: bsd.port.subdir.mk,v 1.19 2000/03/29 15:59:51 espie Exp $
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
#	install, package, readmes, realinstall, deinstall, reinstall,
#	tags
#

.include <bsd.own.mk>

.MAIN: all

.if !defined(DEBUG_FLAGS)
STRIP?=	-s
.endif

.if !defined(OPSYS)	# XXX !!
OPSYS=	OpenBSD
.endif

ECHO_MSG?=	echo

RECURSIVE_FETCH_LIST?=	No

_SUBDIRUSE: .USE
	@for entry in ${SUBDIR}; do \
		for dud in $$DUDS; do \
			if [ $${dud} = $${entry} ]; then \
				${ECHO_MSG} "===> ${DIRPRFX}$${entry} skipped"; \
				continue 2; \
			fi; \
		done; \
		if expr "$$entry" : '.*:' >/dev/null; then \
			flavor=`echo $$entry | sed -e 's/.*://' -e 's/,/ /g'`; \
			entry=`echo $$entry | sed -e 's/:.*//'`; \
			display=" ($$flavor)"; \
		else \
			flavor=''; \
			disply=''; \
		fi; \
		if cd ${.CURDIR}/$${entry}.${MACHINE} 2>/dev/null; then \
			edir=$${entry}.${MACHINE}; \
		elif cd ${.CURDIR}/$${entry} 2>/dev/null; then \
			edir=$${entry}; \
		else \
			${ECHO_MSG} "===> ${DIRPRFX}$${entry} non-existent"; \
			continue; \
		fi; \
		${ECHO_MSG} "===> ${DIRPRFX}$${edir}$$display"; \
		${MAKE} ${.TARGET:realinstall=install} \
			DIRPRFX=${DIRPRFX}$$edir/ \
			RECURSIVE_FETCH_LIST=${RECURSIVE_FETCH_LIST} \
			FLAVOR="$$flavor"; \
	done

${SUBDIR}::
	@if test -d ${.TARGET}.${MACHINE}; then \
		cd ${.CURDIR}/${.TARGET}.${MACHINE}; \
	else \
		cd ${.CURDIR}/${.TARGET}; \
	fi; \
	${MAKE} all

.for __target in all fetch fetch-list package fake extract configure \
		 build clean depend describe distclean deinstall \
		 reinstall tags checksum mirror-distfiles list-distfiles \
		 obj fetch-makefile
.if !target(${__target})
${__target}: _SUBDIRUSE
.endif
.endfor

.if !target(install)
.if !target(beforeinstall)
beforeinstall:
.endif
.if !target(afterinstall)
afterinstall:
.endif
install: afterinstall
afterinstall: realinstall
realinstall: beforeinstall _SUBDIRUSE
.endif

.if !target(readmes)
readmes: readme _SUBDIRUSE
.endif

.if !target(readme)
readme:
	@rm -f README.html
	@make README.html
.endif

.if (${OPSYS} == "NetBSD")
PORTSDIR ?= /usr/opt
.else
PORTSDIR ?= /usr/ports
.endif
TEMPLATES ?= ${PORTSDIR}/infrastructure/templates
.if defined(PORTSTOP)
README=	${TEMPLATES}/README.top
.else
README=	${TEMPLATES}/README.category
.endif

README.html:
	@> $@.tmp
.for entry in ${SUBDIR}
	@echo -n '<dt><a href="'${entry}/README.html'">'"`cd ${entry} && make package-name 2>/dev/null||echo ${entry}`</a><dd>" >> $@.tmp
.if exists(${entry}/pkg/COMMENT)
	@cat ${entry}/pkg/COMMENT >> $@.tmp
.else
	@echo "(no description)" >> $@.tmp
.endif
.endfor
	@sort -t '>' +1 -2 $@.tmp > $@.tmp2
	@cat ${README} | \
		sed -e 's%%CATEGORY%%'`echo ${.CURDIR} | sed -e 's.*/\([^/]*\)$$\1'`'g' \
			-e '/%%DESCR%%/r${.CURDIR}/pkg/DESCR' -e '//d' \
			-e '/%%SUBDIR%%/r$@.tmp2' -e '//d' \
		> $@
	@rm -f $@.tmp $@.tmp2

.PHONY: all fetch fetch-list package extract configure build clean depend \
	describe distclean deinstall reinstall tags checksum mirror-distfiles \
	list-distfiles obj readmes readme \
	beforeinstall afterinstall install realinstall fake
