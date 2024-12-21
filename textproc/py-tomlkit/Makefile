COMMENT=	style-preserving TOML library for Python

MODPY_DISTV=	0.13.2
REVISION=	1
DISTNAME=	tomlkit-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core

TEST_DEPENDS=	devel/py-test-cov \
		textproc/py-yaml

.include <bsd.port.mk>
