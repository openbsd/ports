COMMENT=	PEP 518 backend, using setuptools_scm and flit_core

MODPY_DISTV=	1.7.0
DISTNAME=	flit_scm-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	3

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
# uses internal backend
# (ignore the "Port may need MODPY_PYBUILD=setuptools_scm" warning)
MODPY_PYBUILD=	other
MODPY_PI=	Yes

BUILD_DEPENDS=	devel/py-flit_core \
		devel/py-setuptools_scm

RUN_DEPENDS=	devel/py-flit_core \
		devel/py-setuptools_scm

NO_TEST=	Yes

.include <bsd.port.mk>
