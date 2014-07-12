# $OpenBSD: Makefile,v 1.56 2014/07/12 17:35:32 espie Exp $

CATEGORIES =		databases
V =			4.1
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

NOT_FOR_ARCHS-main =	${NO_SHARED_ARCHS}
NOT_FOR_ARCHS-compact =	${NO_SHARED_ARCHS}

.include <bsd.port.arch.mk>

DBNAME =		${WRKBUILD}/sqlports
DBS =	${DBNAME}.list

.if ${BUILD_PACKAGES:M-main}
MKDB=${FILESDIR}/mksqlitedb
DBS += ${DBNAME} ${DBNAME}-compact
BUILD_DEPENDS =		databases/p5-DBD-SQLite

post-build:
	sqlite3 ${DBNAME}-compact 'select min(paths.fullpkgpath) from paths join ports on paths.id=ports.fullpkgpath where ports.static_plist=1 group by fullpkgname order by paths.fullpkgpath' >${DBNAME}.list
.else
MKDB=${FILESDIR}/mkdblite
.endif

do-build:
	@cd ${PORTSDIR} && PORTSDIR=${PORTSDIR} perl ${MKDB} -v ${DBNAME} -p ${WRKBUILD}/ouch
	@if test -s ${WRKBUILD}/ouch; then \
		cat ${WRKBUILD}/ouch; \
		exit 1; \
	fi

do-install:
	@for i in ${DBS}; do \
		${INSTALL_DATA} $$i ${PREFIX}/share; \
	done

NO_TEST =		Yes
NO_CHECKSUM =		Yes

.include <bsd.port.mk>
