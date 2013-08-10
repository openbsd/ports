# $OpenBSD: Makefile,v 1.11 2013/08/10 13:26:43 robert Exp $

COMMENT =	SQLite database abstraction layer for PHP

V =		1.4.1
DISTNAME =	MDB2_Driver_sqlite-${V}
PKGNAME =	pear-MDB2-sqlite-${V}
CATEGORIES =	net databases

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>
MODULES =	lang/php www/pear

REVISION =	4

# PHP License
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	databases/pear-MDB2>=2.4.1 \
		lang/php/${MODPHP_VERSION}

.include <bsd.port.mk>
