COMMENT=	Python Build Reasonableness

MODPY_EGG_VERSION=	5.11.1
DISTNAME=	pbr-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/^/py-/}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/openstack-dev/pbr

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

#TEST_DEPENDS=	devel/py-testtools${MODPY_FLAVOR} \
#		devel/py-fixtures${MODPY_FLAVOR} \
#		devel/py-virtualenv${MODPY_FLAVOR}

# also needs testscenarios, testresources
NO_TEST=	Yes

post-install:
	mv ${PREFIX}/bin/pbr ${PREFIX}/bin/pbr${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
