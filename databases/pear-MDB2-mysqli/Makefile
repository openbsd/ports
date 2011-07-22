# $OpenBSD: Makefile,v 1.7 2011/07/22 10:20:10 sthen Exp $

COMMENT =	MySQLi database abstraction layer for PHP

V =		1.4.1
DISTNAME =	MDB2_Driver_mysqli-${V}
PKGNAME =	pear-MDB2-mysqli-${V}
CATEGORIES =	net databases

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>
MODULES =	lang/php www/pear

REVISION =	1

# PHP License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	databases/pear-MDB2>=2.4.1 \
		lang/php/${MODPHP_VERSION},-mysqli

.include <bsd.port.mk>
