COMMENT=	extended pickling support for Python objects

MODPY_DISTV=	3.1.2
GH_ACCOUNT=	cloudpipe
GH_PROJECT=	cloudpickle
GH_TAGNAME=	v${MODPY_DISTV}
PKGNAME=	py-cloudpickle-${MODPY_DISTV}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/cloudpipe/cloudpickle

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core

TEST_DEPENDS=	devel/py-mock \
		devel/py-setuptools \
		math/py-numpy \
		sysutils/py-psutil \
		www/py-tornado

#MODPY_TEST_LIBDIR= ".:tests:tests/cloudpickle_testpkg"

.include <bsd.port.mk>
