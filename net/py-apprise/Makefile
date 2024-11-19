COMMENT=	multi-platform push notification library and CLI tool

MODPY_EGG_VERSION=	1.9.0
DISTNAME=	apprise-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:S/py//}

CATEGORIES=	net

HOMEPAGE=	https://github.com/caronc/apprise

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	devel/py-babel${MODPY_FLAVOR}
RUN_DEPENDS=	devel/py-certifi${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-requests-oauthlib${MODPY_FLAVOR} \
		devel/py-click${MODPY_FLAVOR} \
		textproc/py-markdown${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-test-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
