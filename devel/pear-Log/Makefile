# $OpenBSD: Makefile,v 1.20 2013/03/11 10:50:24 espie Exp $

COMMENT =	logging utilities for PHP

DISTNAME =	Log-1.11.5
CATEGORIES =	devel
REVISION = 	1

HOMEPAGE =	http://pear.php.net/package/Log/

MODULES =	www/pear

# MIT license
PERMIT_PACKAGE_CDROM =	Yes

TEST_DEPENDS = ${PKGPATH}

do-test:
	cd ${WRKSRC}/tests; pear run-tests

.include <bsd.port.mk>
