COMMENT=	multi-platform push notification library and CLI tool

MODPY_DISTV=	1.9.2
DISTNAME=	apprise-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/py//}

CATEGORIES=	net

HOMEPAGE=	https://github.com/caronc/apprise

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

BUILD_DEPENDS=	devel/py-babel
RUN_DEPENDS=	devel/py-certifi \
		www/py-requests \
		www/py-requests-oauthlib \
		devel/py-click \
		textproc/py-markdown \
		textproc/py-yaml
TEST_DEPENDS=	devel/py-test-mock

.include <bsd.port.mk>
