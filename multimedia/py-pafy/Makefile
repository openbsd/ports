# $OpenBSD: Makefile,v 1.2 2015/06/22 07:57:29 jasper Exp $

MODPY_EGG_VERSION =	0.3.72
COMMENT =	download YouTube content and retrieve metadata
DISTNAME =	Pafy-${MODPY_EGG_VERSION}
PKGNAME =	py-pafy-${MODPY_EGG_VERSION}
CATEGORIES =	multimedia

HOMEPAGE =	http://np1.github.io/pafy/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =	Yes
MODPY_PI_DIR =	p/pafy

.include <bsd.port.mk>
