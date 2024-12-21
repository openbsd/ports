COMMENT=	PEP 517 compatible backend for pdm

MODPY_DISTV=	2.4.3
DISTNAME=	pdm_backend-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://backend.pdm-project.org/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
# builds using itself as backend
MODPY_PYBUILD=	other

TEST_DEPENDS=	devel/py-editables \
		devel/py-setuptools \
		devel/py-test-cov \
		devel/py-test-xdist

.include <bsd.port.mk>
