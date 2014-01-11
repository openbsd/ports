# $OpenBSD: Makefile,v 1.4 2014/01/11 22:42:26 jeremy Exp $

COMMENT =	mysql driver for swift

DISTNAME =	swift-db-mysql-0.3.0
REVISION =	2
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
FLAVORS =	ruby19 ruby20 ruby21

WANTLIB =	uuid mysqlclient
LIB_DEPENDS =	sysutils/e2fsprogs>=1.42.7 \
		databases/mysql

CONFIGURE_STYLE = ruby gem ext

pre-configure:
	${SUBST_CMD} ${WRKSRC}/ext/swift/db/mysql/extconf.rb

.include <bsd.port.mk>
