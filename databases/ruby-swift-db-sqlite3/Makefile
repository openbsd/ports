# $OpenBSD: Makefile,v 1.6 2015/07/25 23:09:08 jeremy Exp $

COMMENT =	sqlite3 driver for swift

DISTNAME =	swift-db-sqlite3-0.1.5
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

WANTLIB =	uuid sqlite3
LIB_DEPENDS =	sysutils/e2fsprogs>=1.42.7

CONFIGURE_STYLE = ruby gem ext

pre-configure:
	${SUBST_CMD} ${WRKSRC}/ext/swift/db/sqlite3/extconf.rb

.include <bsd.port.mk>
