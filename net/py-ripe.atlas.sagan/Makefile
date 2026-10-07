COMMENT=	parsing library for RIPE Atlas measurement results

MODPY_DISTV=	2.0.1
DISTNAME=	ripe_atlas_sagan-${MODPY_DISTV}
PKGNAME=	py-ripe.atlas.sagan-${MODPY_DISTV}

CATEGORIES=	net

HOMEPAGE=	https://github.com/RIPE-NCC/ripe.atlas.sagan

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

#MODPY_PYTEST_ARGS= tests/*.py

RUN_DEPENDS=	devel/py-dateutil \
		devel/py-tz \
		security/py-cryptography

#TEST_DEPENDS=	devel/py-nose

.include <bsd.port.mk>
