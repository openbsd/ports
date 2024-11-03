COMMENT=	simple packaging tool for simple packages

MODPY_EGG_VERSION=	3.10.1

DISTNAME=	flit-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# https://github.com/pypa/flit
HOMEPAGE=	https://flit.pypa.io/

# BSD
PERMIT_PACKAGE= Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	flit_core

FLAVOR=		python3
FLAVORS=	python3

BUILD_DEPENDS=	devel/py-flit_core${MODPY_FLAVOR}>=${MODPY_EGG_VERSION}
RUN_DEPENDS=	devel/py-flit_core${MODPY_FLAVOR}>=${MODPY_EGG_VERSION} \
		textproc/py-docutils${MODPY_FLAVOR} \
		textproc/py-tomli_w${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

PORTHOME=	${WRKDIR}
TEST_DEPENDS=	devel/py-testpath${MODPY_FLAVOR} \
		devel/py-pip${MODPY_FLAVOR} \
		www/py-responses${MODPY_FLAVOR}

# tests using pep to install expected to fail with EXTERNALLY-MANAGED
MODPY_PYTEST_ARGS= -k 'not test_install_data_dir \
		and not test_install_module_pep621 \
		and not test_symlink_data_dir \
		and not test_symlink_module_pep621'

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
