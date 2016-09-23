# $OpenBSD: Makefile,v 1.9 2016/09/23 09:16:53 sthen Exp $

COMMENT =	mysql driver for swift

DISTNAME =	swift-db-mysql-0.3.2
REVISION =	0
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

WANTLIB =	uuid mysqlclient
LIB_DEPENDS =	sysutils/e2fsprogs>=1.42.7 \
		databases/mariadb

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
