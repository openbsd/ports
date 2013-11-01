# $OpenBSD: Makefile,v 1.25 2013/11/01 14:54:49 espie Exp $

# NOTE for FLAVOR=src
# - you can have up-to-date ${BSDSRCDIR}/distrib/sets/lists 
# and ${XSRCDIR}/distrrib/sets/lists prior to building
# - or you can fetch them on the fly through anoncvs
# you need to set PKGLOCATEDB_WANTANONCVS=Yes in /etc/mk.conf
# and you may possibly want to set PKG_LOCATEDB_CVSROOT
# The port *will go interactive* the first time around, until you
# have the correct key in your ssh config !
#
# The port *will fail if the installation is not more or less uptodate wrt to
# the set lists...

COMMENT =		database of packages for use with locate(1)

# locate data is NOT MI, unfortunately
# PKG_ARCH = ${ARCH}....
DISTNAME =		pkglocatedb-0.6
REVISION =		1
DISTFILES =

CATEGORIES =		databases

PERMIT_PACKAGE_CDROM =	Yes

FLAVORS = src
FLAVOR ?=

.if ${FLAVOR:Msrc}
ARGS = -u -C -s ${BSDSRCDIR} -x ${XSRCDIR}
USE_X11 = Yes
.  include <bsd.own.mk>
PKGLOCATEDB_WANTANONCVS ?= No
.  if ${PKGLOCATEDB_WANTANONCVS:L} == "yes"
PKGLOCATEDB_CVSROOT ?= anoncvs@anoncvs1.ca.openbsd.org:/cvs

BSDSRCDIR = ${WRKDIR}/src
XSRCDIR = ${WRKDIR}/xenocara
post-extract:
	cd ${WRKDIR} && cvs -d ${PKGLOCATEDB_CVSROOT} co src/distrib/sets/lists
	cd ${WRKDIR} && cvs -d ${PKGLOCATEDB_CVSROOT} co xenocara/distrib/sets/lists

.  else
BSDSRCDIR ?= /usr/src
XSRCDIR ?= /usr/xenocara

post-extract:
	if ! test -d ${BSDSRCDIR}/distrib/sets/lists; then \
		echo 1>&2 "set SRCDIR to a valid src dir"; \
		exit 1; \
	fi
	if ! test -d ${XSRCDIR}/distrib/sets/lists; then \
		echo 1>&2 "set XSRCDIR to a valid xenocara dir"; \
		exit 1; \
	fi
.  endif

# we depend on the other flavor for the build
BUILD_DEPENDS = databases/pkglocatedb
do-build:

.else
BUILD_DEPENDS =	databases/sqlports,-list

ARGS = -a -p ${PORTSDIR}


do-build: 
	@if test -s ${WRKBUILD}/ouch; then \
		cat ${WRKBUILD}/ouch; \
		exit 1; \
	fi

.endif

do-install:
	${INSTALL_DATA} ${WRKBUILD}/pkglocatedb ${PREFIX}/share
	${INSTALL_MAN} ${FILESDIR}/pkg_locate.1 ${PREFIX}/man/man1
	${SUBST_CMD} -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} -c \
		${FILESDIR}/pkglocate ${PREFIX}/bin/pkg_locate
	ln -s ${TRUEPREFIX}/bin/pkg_locate ${PREFIX}/bin/pkglocate

NO_TEST =		Yes

.include <bsd.port.mk>

# XXX cheat a bit to avoid having two makefiles
do-build: ${WRKBUILD}/pkglocatedb

.if ${FLAVOR:Msrc}
${WRKBUILD}/pkglocatedb:
	${LOCALBASE}/bin/pkg_locate : | \
		${SUDO} pkg_mklocatedb ${ARGS} >$@.tmp && mv $@.tmp $@
.else
${WRKBUILD}/pkglocatedb:
	unset REPORT_PROBLEM; SUBDIRLIST=${LOCALBASE}/share/sqlports.list REPORT_PROBLEM_LOGFILE=${WRKBUILD}/ouch ${SUDO} pkg_mklocatedb ${ARGS} > $@.tmp && mv $@.tmp $@
.endif
