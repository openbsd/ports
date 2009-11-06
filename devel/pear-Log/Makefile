# $OpenBSD: Makefile,v 1.15 2009/11/06 15:28:09 stephan Exp $

COMMENT =	logging utilities for PHP

DISTNAME =	Log-1.11.5
PKGNAME =	pear-${DISTNAME}
CATEGORIES =	devel

HOMEPAGE =	http://pear.php.net/package/Log/

MAINTAINER =	Stephan A. Rickauer <stephan@openbsd.org>

MODULES =	www/pear

# MIT license
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

REGRESS_DEPENDS = ::${PKGPATH}

do-regress:
	cd ${WRKSRC}/tests; pear run-tests

.include <bsd.port.mk>
