COMMENT=	simple packaging tool for simple packages

MODPY_DISTV=	3.10.1

DISTNAME=	flit-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

# https://github.com/pypa/flit
HOMEPAGE=	https://flit.pypa.io/

# BSD
PERMIT_PACKAGE= Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	flit_core

BUILD_DEPENDS=	devel/py-flit_core>=${MODPY_DISTV}
RUN_DEPENDS=	devel/py-flit_core>=${MODPY_DISTV} \
		textproc/py-docutils \
		textproc/py-tomli_w \
		www/py-requests

PORTHOME=	${WRKDIR}
TEST_DEPENDS=	devel/py-testpath \
		devel/py-pip \
		www/py-responses

# tests using pep to install expected to fail with EXTERNALLY-MANAGED
MODPY_PYTEST_ARGS= -k 'not test_install_data_dir \
		and not test_install_module_pep621 \
		and not test_symlink_data_dir \
		and not test_symlink_module_pep621'

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
