# $OpenBSD: Makefile,v 1.3 2019/05/13 19:03:52 danj Exp $

COMMENT =		Python package for describing statistical models

MODPY_EGG_VERSION =	0.4.1
DISTNAME =		patsy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math
REVISION =		1

# BSD
PERMIT_PACKAGE_CDROM =	Yes

EXTRACT_SUFX =		.zip

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose${MODPY_FLAVOR} \
			math/py-scipy${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} patsy

.include <bsd.port.mk>
