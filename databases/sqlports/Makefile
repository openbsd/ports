# $OpenBSD: Makefile,v 1.29 2010/11/15 00:22:54 espie Exp $

CATEGORIES =		databases
V =			1.13
DISTNAME =		sqlports-$V
DISTFILES =
COMMENT =		sqlite database of ports
COMMENT-main =		${COMMENT}, user version
COMMENT-compact =	${COMMENT}, program version
MAINTAINER =		Marc Espie <espie@openbsd.org>
FULLPKGNAME-compact =	sqlports-compact-$V
FULLPKGNAME-main =	sqlports-$V


PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
MULTI_PACKAGES =	-main -compact

DBNAME =		${WRKBUILD}/sqlports

do-build:
	cd ${PORTSDIR} && ${MAKE} dump-vars NO_IGNORE=Yes REPORT_PROBLEM='touch ${WRKBUILD}/ouch; exit 1'| \
	    perl ${FILESDIR}/mksqlitedb -v ${DBNAME}
	if test -e ${WRKBUILD}/ouch; then exit 1; fi

do-install:
	${INSTALL_DATA} ${DBNAME} ${PREFIX}/share
	${INSTALL_DATA} ${DBNAME}-compact ${PREFIX}/share

BUILD_DEPENDS =		databases/p5-DBD-SQLite
NO_REGRESS =		Yes
NO_CHECKSUM =		Yes

.include <bsd.port.mk>
