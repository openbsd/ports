COMMENT =	converts XML to Python objects

MODPY_EGG_VERSION=	0.23.1
DISTNAME=	trio-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# MIT or Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS =	devel/py-attrs${MODPY_FLAVOR}>=20.1.0 \
		devel/py-exceptiongroup${MODPY_FLAVOR}>=1.0.1 \
		devel/py-outcome${MODPY_FLAVOR} \
		devel/py-sortedcontainers${MODPY_FLAVOR} \
		devel/py-sniffio${MODPY_FLAVOR}>=1.3.0 \
		net/py-idna${MODPY_FLAVOR}

# XXX: needs ruff, pyright
TEST_DEPENDS =	devel/py-astor${MODPY_FLAVOR} \
		devel/py-isort${MODPY_FLAVOR} \
		devel/py-jedi${MODPY_FLAVOR} \
		devel/py-mypy${MODPY_FLAVOR} \
		devel/pylint${MODPY_FLAVOR} \
		security/py-trustme${MODPY_FLAVOR} \
		textproc/py-black${MODPY_FLAVOR}

.include <bsd.port.mk>
