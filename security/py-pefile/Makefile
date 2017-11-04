# $OpenBSD: Makefile,v 1.8 2017/11/04 14:32:48 rpointel Exp $

COMMENT =		Python module to read and work with PE files

MODPY_EGG_VERSION =	2017.9.3
DISTNAME =		pefile-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

HOMEPAGE =		https://github.com/erocarrera/pefile

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS = 	Yes
MODPY_PI =		Yes

RUN_DEPENDS =		devel/py-future

NO_TEST =		Yes

.include <bsd.port.mk>
