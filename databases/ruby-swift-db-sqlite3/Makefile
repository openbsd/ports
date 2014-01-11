# $OpenBSD: Makefile,v 1.3 2014/01/11 22:42:26 jeremy Exp $

COMMENT =	sqlite3 driver for swift

DISTNAME =	swift-db-sqlite3-0.1.3
REVISION =	1
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
FLAVORS =	ruby19 ruby20 ruby21

WANTLIB =	uuid sqlite3
LIB_DEPENDS =	sysutils/e2fsprogs>=1.42.7

CONFIGURE_STYLE = ruby gem ext

pre-configure:
	${SUBST_CMD} ${WRKSRC}/ext/swift/db/sqlite3/extconf.rb

.include <bsd.port.mk>
