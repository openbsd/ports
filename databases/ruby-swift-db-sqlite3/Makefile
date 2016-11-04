# $OpenBSD: Makefile,v 1.8 2016/11/04 21:26:37 jeremy Exp $

COMMENT =	sqlite3 driver for swift

DISTNAME =	swift-db-sqlite3-0.1.5
REVISION =	1
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

WANTLIB =	uuid sqlite3
LIB_DEPENDS =	sysutils/e2fsprogs>=1.42.7 \
		databases/sqlite3

CONFIGURE_STYLE = ruby gem ext

pre-configure:
	${SUBST_CMD} ${WRKSRC}/ext/swift/db/sqlite3/extconf.rb

.include <bsd.port.mk>
