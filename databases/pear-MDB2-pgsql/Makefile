# $OpenBSD: Makefile,v 1.6 2018/05/22 08:18:08 sthen Exp $

COMMENT =	PostgreSQL database abstraction layer for PHP

V =		1.4.1
DISTNAME =	MDB2_Driver_pgsql-${V}
PKGNAME =	pear-MDB2-pgsql-${V}
CATEGORIES =	net databases
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>
REVISION =	3

MODULES =	lang/php www/pear

# PHP License
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	databases/pear-MDB2>=2.4.1 \
		lang/php/${MODPHP_VERSION},-pgsql

.include <bsd.port.mk>
