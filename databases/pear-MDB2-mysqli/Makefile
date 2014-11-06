# $OpenBSD: Makefile,v 1.12 2014/11/06 17:13:39 sthen Exp $

COMMENT =	MySQLi database abstraction layer for PHP

V =		1.4.1
DISTNAME =	MDB2_Driver_mysqli-${V}
PKGNAME =	pear-MDB2-mysqli-${V}
CATEGORIES =	net databases

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>
MODULES =	lang/php www/pear

REVISION =	5

# PHP License
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	databases/pear-MDB2>=2.4.1 \
		lang/php/${MODPHP_VERSION},-mysqli

.include <bsd.port.mk>
