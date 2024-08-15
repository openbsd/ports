COMMENT=	style-preserving TOML library for Python

MODPY_EGG_VERSION=	0.13.2
DISTNAME=	tomlkit-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core

FLAVORS=	python3
FLAVOR=		python3

TEST_DEPENDS=	devel/py-test-cov${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR}

.include <bsd.port.mk>
