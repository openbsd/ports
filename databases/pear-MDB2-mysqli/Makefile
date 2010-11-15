# $OpenBSD: Makefile,v 1.4 2010/11/15 00:22:53 espie Exp $

COMMENT =	MySQLi database abstraction layer for PHP

V =		1.4.1
DISTNAME =	MDB2_Driver_mysqli-${V}
PKGNAME =	pear-MDB2-mysqli-${V}
CATEGORIES =	net databases

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>
MODULES =	www/pear

# PHP License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	pear-MDB2->=2.4.1:databases/pear-MDB2 \
		www/php5/extensions,-mysqli

.include <bsd.port.mk>
