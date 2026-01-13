COMMENT=	style-preserving TOML library for Python

MODPY_DISTV=	0.14.0
DISTNAME=	tomlkit-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-test-cov \
		textproc/py-yaml

.include <bsd.port.mk>
