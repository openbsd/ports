COMMENT =		DNS reconnaissance tool for locating non-contiguous IP space

MODPY_DISTV =	1.5.0
GH_ACCOUNT =		mschwager
GH_PROJECT =		fierce
GH_TAGNAME =		${MODPY_DISTV}
REVISION =		1

CATEGORIES =		security

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		net/py-dnspython

pre-configure:
	sed -i 's,os.path.dirname(__file__),"${MODPY_SITEPKG}/fierce/",' \
		${WRKSRC}/fierce/fierce.py

.include <bsd.port.mk>
