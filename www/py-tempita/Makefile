COMMENT =	very small text templating language

MODPY_DISTV =	0.5.2
DISTNAME =	Tempita-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME:L}
REVISION =	11

CATEGORIES =	www

HOMEPAGE =	http://pythonpaste.org/tempita/

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_PYBUILD =	setuptools

TEST_DEPENDS = devel/py-nose

post-patch:
	cd ${WRKSRC}; 2to3 -w tempita/*py

do-test:
	cd ${WRKSRC}; ${LOCALBASE}/bin/nosetests

.include <bsd.port.mk>
