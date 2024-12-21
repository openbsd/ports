COMMENT =		distributed data storage classes

MODPY_DISTV =	0.06
DISTNAME =		ana-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		6

CATEGORIES =		devel

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =		https://github.com/zardus/ana

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-future

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}ana/
	${INSTALL_DATA} ${FILESDIR}/README.md ${PREFIX}/share/doc/${MODPY_PY_PREFIX}ana/

.include <bsd.port.mk>
