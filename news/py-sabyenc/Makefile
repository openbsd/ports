# $OpenBSD: Makefile,v 1.1.1.1 2019/02/27 04:26:28 bket Exp $

COMMENT =		yEnc Module for Python modified for SABnzbd

MODPY_EGG_VERSION =	3.3.5
DISTNAME =		sabyenc-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		news

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		${MODPY_WANTLIB} pthread

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
