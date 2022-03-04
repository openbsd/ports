# $OpenBSD: Makefile,v 1.8 2022/03/04 09:47:10 sthen Exp $

COMMENT=		closed caption converter

MODPY_EGG_VERSION=	2.0.5
DISTNAME=		pycaption-${MODPY_EGG_VERSION}
PKGNAME=		py-caption-${MODPY_EGG_VERSION}

CATEGORIES=		multimedia

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

FLAVORS=		python3
FLAVOR=			python3

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST_ARGS=	tests

RUN_DEPENDS=		textproc/py-cssutils${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR}

NO_TEST=		Yes
# needs this, not imported yet
#TEST_DEPENDS=		devel/py-test-lazy-fixture${MODPY_FLAVOR}

post-install:
	rm -rf ${WRKINST}${MODPY_SITEPKG}/tests

.include <bsd.port.mk>
