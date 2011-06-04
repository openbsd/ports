# $OpenBSD: Makefile,v 1.17 2011/06/04 11:41:08 sthen Exp $

COMMENT =	logging utilities for PHP

DISTNAME =	Log-1.11.5
CATEGORIES =	devel

HOMEPAGE =	http://pear.php.net/package/Log/

MAINTAINER =	Stephan A. Rickauer <stephan@openbsd.org>

MODULES =	www/pear

# MIT license
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

REGRESS_DEPENDS = ${PKGPATH}

do-regress:
	cd ${WRKSRC}/tests; pear run-tests

.include <bsd.port.mk>
