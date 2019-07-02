# $OpenBSD: Makefile,v 1.2 2019/07/02 04:19:32 bket Exp $

COMMENT =		yEnc Module for Python modified for SABnzbd

MODPY_EGG_VERSION =	3.3.6
DISTNAME =		sabyenc-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		news

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODPY_WANTLIB} pthread

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
