COMMENT=	format dates according to RFC3339

MODPY_DISTV=	1.1
DISTNAME=	pyRFC3339-${MODPY_DISTV}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME}
CATEGORIES=	textproc
REVISION=	4

# ISC
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-tz

.include <bsd.port.mk>
