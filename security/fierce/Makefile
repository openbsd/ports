# $OpenBSD: Makefile,v 1.6 2020/05/30 12:09:31 jasper Exp $

COMMENT =		DNS reconnaissance tool for locating non-contiguous IP space

MODPY_EGG_VERSION =	1.4.0
GH_ACCOUNT =		mschwager
GH_PROJECT =		fierce
GH_TAGNAME =		${MODPY_EGG_VERSION}

CATEGORIES =		security

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		net/py-dnspython${MODPY_FLAVOR}

pre-configure:
	sed -i 's,os.path.dirname(__file__),"${MODPY_SITEPKG}/fierce/",' \
		${WRKSRC}/fierce/fierce.py

.include <bsd.port.mk>
