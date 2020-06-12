# $OpenBSD: Makefile,v 1.23 2020/06/12 14:24:22 sthen Exp $

COMMENT =	logging utilities for PHP

DISTNAME =	Log-1.13.2
CATEGORIES =	devel

HOMEPAGE =	http://pear.php.net/package/Log/

# MIT license
PERMIT_PACKAGE =	Yes

MODULES =	www/pear

TEST_DEPENDS = ${PKGPATH}

do-test:
	cd ${WRKSRC}/tests; pear run-tests

.include <bsd.port.mk>
