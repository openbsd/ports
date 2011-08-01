# $OpenBSD: Makefile,v 1.18 2011/08/01 19:30:31 stephan Exp $

COMMENT =	logging utilities for PHP

DISTNAME =	Log-1.11.5
CATEGORIES =	devel
REVISION = 	0

HOMEPAGE =	http://pear.php.net/package/Log/

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
