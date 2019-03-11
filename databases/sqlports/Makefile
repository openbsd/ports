# $OpenBSD: Makefile,v 1.110 2019/03/11 13:29:21 espie Exp $

CATEGORIES =		databases
V =			7.19
DISTNAME =		sqlports-$V
DISTFILES =
COMMENT =		sqlite database of ports
COMMENT-main =		${COMMENT}
COMMENT-list =		full list of pkgpaths in ports
MAINTAINER =		Marc Espie <espie@openbsd.org>
PKGNAME-main =		sqlports-$V
PKGNAME-list =		portslist-$V

PERMIT_PACKAGE_CDROM =	Yes
MULTI_PACKAGES =	-main -list

DBNAME =		sqlports
DBS =			${DBNAME}.list ${DBNAME} ports-INDEX
BUILD_DEPENDS =		databases/p5-DBD-SQLite \
			databases/sqlite3
RUN_DEPENDS-main =	databases/sqlite3

SCRIPTS = print-ports-index show-reverse-deps

do-build:
	@unset MAKEFLAGS; unset BUILD_ONCE; cd ${PORTSDIR} && PORTSDIR=${PORTSDIR} ${MAKE_ENV} perl ${FILESDIR}/mksqlitedb -v ${WRKBUILD}/${DBNAME} -p ${WRKBUILD}/ouch
	@if test -s ${WRKBUILD}/ouch; then \
		cat ${WRKBUILD}/ouch; \
		exit 1; \
	fi

alter-tables:
	@unset MAKEFLAGS; unset BUILD_ONCE; cd ${PORTSDIR} && PORTSDIR=${PORTSDIR} ${MAKE_ENV} ${SUDO} -u ${BUILD_USER} perl ${FILESDIR}/rebuild_schema -v ${WRKBUILD}/${DBNAME} -p ${WRKBUILD}/ouch
	@${SUDO} -u ${BUILD_USER} ${MAKE} post-build

post-build:
	cd ${WRKBUILD} && ${LOCALBASE}/bin/sqlite3 ${DBNAME} 'select min(_paths.fullpkgpath) from _paths join _ports on _paths.id=_ports.fullpkgpath where _ports.static_plist=1 group by fullpkgname order by _paths.fullpkgpath' >${DBNAME}.list
	cd ${WRKBUILD} && sh ${FILESDIR}/scripts/print-ports-index ${DBNAME} >ports-INDEX

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin
.for s in ${SCRIPTS}
	@${SUBST_PROGRAM} ${FILESDIR}/scripts/$s ${PREFIX}/bin/$s
.endfor
	@for i in ${DBS}; do \
		${INSTALL_DATA} ${WRKBUILD}/$$i ${PREFIX}/share; \
	done

NO_TEST =		Yes
NO_CHECKSUM =		Yes

.include <bsd.port.mk>
