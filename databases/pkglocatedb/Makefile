# $OpenBSD: Makefile,v 1.35 2019/07/12 20:43:59 sthen Exp $

COMMENT =		database of packages for use with locate(1)

# locate data is NOT MI, unfortunately
# PKG_ARCH = ${ARCH}....
DISTNAME =		pkglocatedb-1.5
DISTFILES =

CATEGORIES =		databases

PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =	databases/sqlports,-list

ARGS = -a -p ${PORTSDIR}

do-build: 
	@if test -s ${WRKBUILD}/ouch; then \
		cat ${WRKBUILD}/ouch; \
		exit 1; \
	fi

do-install:
	${INSTALL_DATA} ${WRKBUILD}/pkglocatedb ${PREFIX}/share
	${SUBST_MAN} ${FILESDIR}/pkg_locate.1 ${PREFIX}/man/man1/pkg_locate.1
	${SUBST_PROGRAM} ${FILESDIR}/pkglocate ${PREFIX}/bin/pkg_locate
	ln -s ${TRUEPREFIX}/bin/pkg_locate ${PREFIX}/bin/pkglocate

NO_TEST =		Yes

.include <bsd.port.mk>

# XXX cheat a bit to avoid having two makefiles
do-build: ${WRKBUILD}/pkglocatedb

${WRKBUILD}/pkglocatedb:
	unset REPORT_PROBLEM MAKEFLAGS; \
	SUBDIRLIST=${LOCALBASE}/share/sqlports.list REPORT_PROBLEM_LOGFILE=${WRKBUILD}/ouch pkg_mklocatedb ${ARGS} > $@.tmp && mv $@.tmp $@
