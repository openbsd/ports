BROKEN=		https://github.com/TvoroG/pytest-lazy-fixture/issues/65

COMMENT=	pytest plugin to use fixtures in pytest.mark.parametrize

MODPY_EGG_VERSION=	0.6.3

DISTNAME=	pytest-lazy-fixture-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
REVISION=	3

CATEGORIES=	devel

HOMEPAGE=	https://github.com/tvorog/pytest-lazy-fixture

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-test${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
