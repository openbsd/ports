COMMENT =		detects when files bit-rot

MODPY_DISTV =	1.0.0
DISTNAME =		bitrot-${MODPY_DISTV}
REVISION =		4

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/ambv/bitrot/

MAINTAINER =		Bryan Vyhmeister <bryan@bsdjournal.net>

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
MODPY_PYBUILD =		setuptools

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bitrot
	${INSTALL_DATA} ${WRKSRC}/README.rst ${PREFIX}/share/doc/bitrot

.include <bsd.port.mk>
