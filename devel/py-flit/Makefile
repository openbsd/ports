COMMENT=	simple packaging tool for simple packages

MODPY_EGG_VERSION=	3.9.0

DISTNAME=	flit-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	devel

# https://github.com/pypa/flit
HOMEPAGE=	https://flit.pypa.io/

# BSD
PERMIT_PACKAGE= Yes

MODULES=	lang/python
MODPY_PI=	Yes

FLAVOR=		python3
FLAVORS=	python3

RUN_DEPENDS=	devel/py-flit_core${MODPY_FLAVOR} \
		textproc/py-docutils${MODPY_FLAVOR} \
		textproc/py-tomli_w${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

PORTHOME=	${WRKDIR}
MODPY_PYTEST=	Yes
TEST_DEPENDS=	devel/py-testpath${MODPY_FLAVOR} \
		devel/py-pip${MODPY_FLAVOR} \
		www/py-responses${MODPY_FLAVOR}

MODPY_PYBUILD=	flit_core

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
