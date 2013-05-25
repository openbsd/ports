# $OpenBSD: Makefile,v 1.1.1.1 2013/05/25 22:17:53 jeremy Exp $

COMMENT =	mysql driver for swift

DISTNAME =	swift-db-mysql-0.3.0
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
FLAVOR ?=	ruby19
FLAVORS =	ruby19 ruby20

WANTLIB =	e2fs-uuid mysqlclient
LIB_DEPENDS =	sysutils/e2fsprogs \
		databases/mariadb

CONFIGURE_STYLE = ruby gem ext

pre-configure:
	${SUBST_CMD} ${WRKSRC}/ext/swift/db/mysql/extconf.rb

.include <bsd.port.mk>
