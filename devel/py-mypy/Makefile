COMMENT=	optional static type checker for Python

MODPY_DISTV=	1.14.1
DISTNAME=	mypy-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# https://github.com/python/mypy
HOMEPAGE=	https://www.mypy-lang.org/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
BUILD_DEPENDS=	devel/py-types-psutil \
		devel/py-types-setuptools \
		devel/py-typing-extensions \
		devel/py-mypy-extensions
RUN_DEPENDS=	devel/py-typing-extensions \
		devel/py-mypy-extensions
# some tests want network access
PORTHOME=	${WRKDIR}
TEST_DEPENDS=	devel/py-attrs \
		devel/py-test-cov \
		devel/py-test-xdist \
		sysutils/py-filelock \
		sysutils/py-psutil \
		textproc/py-tomli

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mrust}
RUN_DEPENDS+=	textproc/py-orjson
.endif

.include <bsd.port.mk>
