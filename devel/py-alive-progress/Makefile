COMMENT=	progress bar with real-time throughput and ETA

CATEGORIES=	devel

MODPY_DISTV=	3.3.0
DISTNAME=	alive-progress-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

# MIT
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/py-graphemeu \
		sysutils/py-about_time

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

NO_TEST=	Yes

.include <bsd.port.mk>
