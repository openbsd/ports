# $OpenBSD: Makefile,v 1.26 2014/07/12 16:37:05 espie Exp $

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
DISTNAME =		pkglocatedb-1.0
DISTFILES =

CATEGORIES =		databases

PERMIT_PACKAGE_CDROM =	Yes

USE_X11 = Yes
BUILD_DEPENDS =	databases/sqlports,-list

ARGS = -u -a -p ${PORTSDIR}

SRCDB = /usr/lib/locate/src.db
XDB = ${X11BASE}/lib/locate/xorg.db

post-extract:
	@status=0; if !  test -f ${SRCDB}; then \
		echo "Error ${SRCDB} missing"; \
		status=1; \
	fi; \
	if !  test -f ${XDB}; then \
		echo "Error ${XDB} missing"; \
		status=1;\
	fi; \
	exit $${status}

do-build: 
	@if test -s ${WRKBUILD}/ouch; then \
		cat ${WRKBUILD}/ouch; \
		exit 1; \
	fi

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

${WRKBUILD}/pkglocatedb:
	unset REPORT_PROBLEM; 
	locate -d ${SRCDB} -d ${XDB} : | \
	SUBDIRLIST=${LOCALBASE}/share/sqlports.list REPORT_PROBLEM_LOGFILE=${WRKBUILD}/ouch ${SUDO} pkg_mklocatedb ${ARGS} > $@.tmp && mv $@.tmp $@
