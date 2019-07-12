# $OpenBSD: Makefile,v 1.22 2019/07/12 20:45:16 sthen Exp $

COMMENT =	logging utilities for PHP

DISTNAME =	Log-1.12.9
CATEGORIES =	devel

HOMEPAGE =	http://pear.php.net/package/Log/

# MIT license
PERMIT_PACKAGE =	Yes

MODULES =	www/pear

TEST_DEPENDS = ${PKGPATH}

do-test:
	cd ${WRKSRC}/tests; pear run-tests

.include <bsd.port.mk>
