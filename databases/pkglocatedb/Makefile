# $OpenBSD: Makefile,v 1.12 2012/04/29 08:51:35 espie Exp $

COMMENT =		database of packages for use with locate(1)

# locate data is NOT MI, unfortunately
# PKG_ARCH = ${ARCH}....
DISTNAME =		pkglocatedb-0.5
DISTFILES =

CATEGORIES =		databases

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

BUILD_DEPENDS =	databases/sqlports,-compact>=1.18
FLAVORS = src
FLAVOR ?=

ARGS = -a -p ${PORTSDIR}
.if ${FLAVOR:Msrc}
SRCDIR ?= /usr/src
XSRCDIR ?= /usr/xenocara
ARGS += -s ${SRCDIR} -x ${XSRCDIR}


post-extract:
	if ! test -d ${SRCDIR}/distrib/sets/lists; then \
		echo 1>&2 "set SRCDIR to a valid src dir"; \
		exit 1; \
	fi
	if ! test -d ${XSRCDIR}/distrib/sets/lists; then \
		echo 1>&2 "set XSRCDIR to a valid xenocara dir"; \
		exit 1; \
	fi
.endif

do-build: 
	@if test -s ${WRKBUILD}/ouch; then \
		cat ${WRKBUILD}/ouch; \
		exit 1; \
	fi

do-install:
	${INSTALL_DATA} ${WRKBUILD}/pkglocatedb ${PREFIX}/share
	${SUBST_CMD} -o root -g bin -c ${FILESDIR}/pkglocate ${PREFIX}/bin/pkg_locate
	chmod ${BINMODE} ${PREFIX}/bin/pkg_locate
	ln -s ${TRUEPREFIX}/bin/pkg_locate ${PREFIX}/bin/pkglocate

NO_REGRESS =		Yes

.include <bsd.port.mk>

# XXX cheat a bit to avoid having two makefiles
do-build: ${WRKBUILD}/pkglocatedb

${WRKBUILD}/subdirlist:
	sqlite3 ${LOCALBASE}/share/sqlports-compact 'select min(paths.fullpkgpath||ports.pseudo_flavor) from paths join ports on paths.id=ports.fullpkgpath group by fullpkgname order by paths.fullpkgpath' >$@
${WRKBUILD}/pkglocatedb: ${WRKBUILD}/subdirlist
	SUBDIRLIST=${WRKBUILD}/subdirlist FULLPATH=Yes REPORT_PROBLEM_LOGFILE=${WRKBUILD}/ouch pkg_mklocatedb ${ARGS} > $@.tmp && mv $@.tmp $@
