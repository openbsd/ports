# $OpenBSD: Makefile,v 1.51 2013/06/21 10:48:38 espie Exp $

CATEGORIES =		databases
V =			2.8
DISTNAME =		sqlports-$V
DISTFILES =
COMMENT =		sqlite database of ports
COMMENT-main =		${COMMENT}, user version
COMMENT-compact =	${COMMENT}, program version
MAINTAINER =		Marc Espie <espie@openbsd.org>
PKGNAME-compact =	sqlports-compact-$V
PKGNAME-main =		sqlports-$V


PERMIT_PACKAGE_CDROM =	Yes
MULTI_PACKAGES =	-main -compact

DBNAME =		${WRKBUILD}/sqlports

do-build:
	@cd ${PORTSDIR} && PORTSDIR=${PORTSDIR} perl ${FILESDIR}/mksqlitedb -v ${DBNAME} -p ${WRKBUILD}/ouch
	@if test -s ${WRKBUILD}/ouch; then \
		cat ${WRKBUILD}/ouch; \
		exit 1; \
	fi

do-install:
	${INSTALL_DATA} ${DBNAME} ${PREFIX}/share
	${INSTALL_DATA} ${DBNAME}-compact ${PREFIX}/share

BUILD_DEPENDS =		databases/p5-DBD-SQLite
NO_TEST =		Yes
NO_CHECKSUM =		Yes

.include <bsd.port.mk>
