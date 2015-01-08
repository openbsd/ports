# $OpenBSD: Makefile,v 1.7 2015/01/08 21:21:23 jeremy Exp $

COMMENT =	mysql driver for swift

DISTNAME =	swift-db-mysql-0.3.0
REVISION =	4
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

WANTLIB =	uuid mysqlclient
LIB_DEPENDS =	sysutils/e2fsprogs>=1.42.7 \
		databases/mariadb

CONFIGURE_STYLE = ruby gem ext

pre-configure:
	${SUBST_CMD} ${WRKSRC}/ext/swift/db/mysql/extconf.rb

.include <bsd.port.mk>
