COMMENT=	simple scripting language for web browsing

MODPY_DISTV=	3.3
DISTNAME=	twill-${MODPY_DISTV}
CATEGORIES=	www
REVISION=	0

HOMEPAGE=	https://twill-tools.github.io/twill/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

USE_GMAKE=	Yes

# needs unported wsgi_intercept and pytidylib
MODPY_PYTEST_ARGS=	--ignore tests/test_wsgi_intercept.py \
			--ignore tests/test_tidy.py

BUILD_DEPENDS=	textproc/py-sphinx

RUN_DEPENDS=	textproc/py-lxml>=5.2,<6 \
		www/py-httpx<1 \
		devel/py-parsing<4

TEST_DEPENDS=	www/py-flask
# default is 8080, which is not uncommon to be used by something else
TEST_ENV=	TWILL_TEST_PORT=8086

post-build:
	cd ${WRKSRC}/docs && ${MAKE_PROGRAM} man

post-install:
	${INSTALL_MAN} ${WRKBUILD}/docs/_build/man/twill.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
