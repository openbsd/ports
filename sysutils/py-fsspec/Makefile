COMMENT =	specification for pythonic filesystems

MODPY_EGG_VERSION =	2024.10.0

DISTNAME=	fsspec-${MODPY_EGG_VERSION}
PKGNAME=	py-fsspec-${MODPY_EGG_VERSION}
CATEGORIES=	sysutils

HOMEPAGE=	https://filesystem-spec.readthedocs.io/en/latest/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatch-vcs
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR=		python3

# tests not present on pypi
NO_TEST =	Yes
RUN_DEPENDS =	www/py-requests${MODPY_FLAVOR} \
		www/py-aiohttp${MODPY_FLAVOR}

.include <bsd.port.mk>
