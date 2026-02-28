COMMENT=	composable class support for attrs and dataclasses

MODPY_DISTV=	26.1.0
DISTNAME=	cattrs-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://cattrs.rs/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs

RUN_DEPENDS =	devel/py-attrs \
		devel/py-typing-extensions

# needs immutables
MODPY_PYTEST_ARGS= --ignore tests/test_cols.py \
		   --ignore tests/test_unstructure_collections.py

TEST_DEPENDS=	devel/py-coverage \
		devel/py-hypothesis \
		devel/py-msgspec \
		devel/py-test-benchmark \
		devel/py-test-xdist \
		net/py-cbor2 \
		textproc/py-orjson \
		textproc/py-ujson

.include <bsd.port.mk>
