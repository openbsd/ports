# $OpenBSD: Makefile,v 1.21 2015/11/11 14:17:01 benoit Exp $

COMMENT =	logging utilities for PHP

DISTNAME =	Log-1.12.9
CATEGORIES =	devel

HOMEPAGE =	http://pear.php.net/package/Log/

# MIT license
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	www/pear

TEST_DEPENDS = ${PKGPATH}

do-test:
	cd ${WRKSRC}/tests; pear run-tests

.include <bsd.port.mk>
