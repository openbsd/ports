COMMENT=	library for async concurrency and I/O

MODPY_EGG_VERSION=	0.24.0
REVISION=	1
DISTNAME=	trio-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# MIT or Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

HOMEPAGE=	https://github.com/python-trio/trio

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-attrs${MODPY_FLAVOR}>=20.1.0 \
		devel/py-exceptiongroup${MODPY_FLAVOR}>=1.0.1 \
		devel/py-outcome${MODPY_FLAVOR} \
		devel/py-sortedcontainers${MODPY_FLAVOR} \
		devel/py-sniffio${MODPY_FLAVOR}>=1.3.0 \
		net/py-idna${MODPY_FLAVOR}

# XXX lots fail: needs ruff, pyright, maybe py-test-trio
TEST_DEPENDS=	devel/py-astor${MODPY_FLAVOR} \
		devel/py-isort${MODPY_FLAVOR} \
		devel/py-jedi${MODPY_FLAVOR} \
		devel/py-mypy${MODPY_FLAVOR} \
		devel/pylint${MODPY_FLAVOR} \
		security/py-trustme${MODPY_FLAVOR} \
		textproc/py-black${MODPY_FLAVOR}

.include <bsd.port.mk>
