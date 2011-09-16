# $OpenBSD: Makefile,v 1.19 2011/09/16 09:24:53 espie Exp $

COMMENT =	logging utilities for PHP

DISTNAME =	Log-1.11.5
CATEGORIES =	devel
REVISION = 	1

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
