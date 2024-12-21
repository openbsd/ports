COMMENT =	parser for the Open Financial Exchange file format

MODPY_DISTV =	0.21
REVISION =	5
DISTNAME =	ofxparse-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	textproc

MAINTAINER =	Sebastien Marie <semarie@kapouay.eu.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS +=		devel/py-six \
			textproc/py-lxml \
			www/py-beautifulsoup4

.include <bsd.port.mk>
