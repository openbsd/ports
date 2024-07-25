COMMENT=	PEP 517 compatible backend for pdm

MODPY_EGG_VERSION=	2.3.3
DISTNAME=	pdm_backend-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:S/_/-/}

CATEGORIES=	devel

HOMEPAGE=	https://backend.pdm-project.org/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
# builds using itself as backend
MODPY_PYBUILD=	other

TEST_DEPENDS=	devel/py-editables${MODPY_FLAVOR} \
		devel/py-setuptools${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR} \
		devel/py-test-xdist${MODPY_FLAVOR}

.include <bsd.port.mk>
