COMMENT=		simple scripting language for web browsing

MODPY_EGG_VERSION=	3.1
DISTNAME=		twill-${MODPY_EGG_VERSION}
CATEGORIES=		www
REVISION=		0

HOMEPAGE=		https://twill-tools.github.io/twill/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PYBUILD =		setuptools
MODPY_PI=		Yes

USE_GMAKE=		Yes

# needs unported wsgi_intercept and pytidylib
MODPY_PYTEST_ARGS=	--ignore tests/test_wsgi_intercept.py \
			--ignore tests/test_tidy.py

BUILD_DEPENDS=		textproc/py-sphinx${MODPY_FLAVOR}

RUN_DEPENDS=		textproc/py-lxml${MODPY_FLAVOR}>=4.9,<5 \
			www/py-requests${MODPY_FLAVOR}>=2.27,<3 \
			devel/py-parsing${MODPY_FLAVOR}>=3.0,<4

TEST_DEPENDS=		www/py-quixote${MODPY_FLAVOR}>=3.6,<4

post-build:
	cd ${WRKSRC}/docs && ${MAKE_PROGRAM} man

post-install:
	${INSTALL_MAN} ${WRKBUILD}/docs/_build/man/twill.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
