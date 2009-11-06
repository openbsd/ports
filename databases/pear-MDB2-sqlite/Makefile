# $OpenBSD: Makefile,v 1.3 2009/11/06 09:01:07 jasper Exp $

COMMENT =	SQLite database abstraction layer for PHP

V =		1.4.1
DISTNAME =	MDB2_Driver_sqlite-${V}
PKGNAME =	pear-MDB2-sqlite-${V}
CATEGORIES =	net databases

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>
MODULES =	www/pear

# PHP License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	:pear-MDB2->=2.4.1:databases/pear-MDB2 \
		:php5-sqlite-*:www/php5/extensions,-sqlite

.include <bsd.port.mk>
