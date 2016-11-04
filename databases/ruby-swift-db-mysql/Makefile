# $OpenBSD: Makefile,v 1.10 2016/11/04 21:26:37 jeremy Exp $

COMMENT =	mysql driver for swift

DISTNAME =	swift-db-mysql-0.3.2
REVISION =	1
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
