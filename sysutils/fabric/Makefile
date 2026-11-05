COMMENT=	simple, pythonic tool for remote execution and deployment

MODPY_DISTV=	3.2.2
DISTNAME=	fabric-${MODPY_DISTV}

CATEGORIES=	sysutils

HOMEPAGE=	https://www.fabfile.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	security/py-paramiko \
		devel/py-decorator \
		devel/py-invoke \
		devel/py-deprecated
TEST_DEPENDS=	www/py-jinja2 \
		devel/py-test-relaxed \
		devel/py-mock \
		textproc/py-icecream

PORTHOME=	${WRKSRC}
MODPY_PYTEST_ARGS= tests

.include <bsd.port.mk>
