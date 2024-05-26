COMMENT=	closed caption converter

MODPY_EGG_VERSION=	2.2.8
DISTNAME=	pycaption-${MODPY_EGG_VERSION}
PKGNAME=	py-caption-${MODPY_EGG_VERSION}

CATEGORIES=	multimedia

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	textproc/py-cssutils${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR} \
		www/py-beautifulsoup4${MODPY_FLAVOR}

post-install:
	rm -r ${WRKINST}${MODPY_SITEPKG}/tests

.include <bsd.port.mk>
