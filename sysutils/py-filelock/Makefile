COMMENT=	platform independent file lock

MODPY_EGG_VERSION=	3.15.4
DISTNAME=	filelock-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	sysutils

HOMEPAGE=	https://py-filelock.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs

TEST_DEPENDS=	devel/py-test-cov${MODPY_FLAVOR} \
		devel/py-test-mock${MODPY_FLAVOR} \
		devel/py-test-timeout${MODPY_FLAVOR} \
		devel/py-virtualenv${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
