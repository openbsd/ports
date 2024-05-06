COMMENT =	parser for the Open Financial Exchange file format

MODPY_EGG_VERSION = 0.21
REVISION =	4
DISTNAME =	ofxparse-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	textproc

MAINTAINER =	Sebastien Marie <semarie@kapouay.eu.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS +=		devel/py-six${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR}

.include <bsd.port.mk>
