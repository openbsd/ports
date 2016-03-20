# $OpenBSD: Makefile,v 1.61 2016/03/20 20:03:07 naddy Exp $

CATEGORIES =		databases
V =			5.0
DISTNAME =		sqlports-$V
DISTFILES =
COMMENT =		sqlite database of ports
COMMENT-main =		${COMMENT}, user version
COMMENT-compact =	${COMMENT}, program version
COMMENT-list =		full list of pkgpaths in ports
MAINTAINER =		Marc Espie <espie@openbsd.org>
PKGNAME-compact =	sqlports-compact-$V
PKGNAME-main =		sqlports-$V
PKGNAME-list =		portslist-$V

PERMIT_PACKAGE_CDROM =	Yes
MULTI_PACKAGES =	-main -compact -list

DBNAME =		${WRKBUILD}/sqlports
DBS =			${DBNAME}.list ${DBNAME} ${DBNAME}-compact
BUILD_DEPENDS =		databases/p5-DBD-SQLite

do-build:
	@cd ${PORTSDIR} && PORTSDIR=${PORTSDIR} perl ${FILESDIR}/mksqlitedb -v ${DBNAME} -p ${WRKBUILD}/ouch
	@if test -s ${WRKBUILD}/ouch; then \
		cat ${WRKBUILD}/ouch; \
		exit 1; \
	fi
	sqlite3 ${DBNAME}-compact 'select min(paths.fullpkgpath) from paths join ports on paths.id=ports.fullpkgpath where ports.static_plist=1 group by fullpkgname order by paths.fullpkgpath' >${DBNAME}.list

do-install:
	@for i in ${DBS}; do \
		${INSTALL_DATA} $$i ${PREFIX}/share; \
	done

NO_TEST =		Yes
NO_CHECKSUM =		Yes

.include <bsd.port.mk>
