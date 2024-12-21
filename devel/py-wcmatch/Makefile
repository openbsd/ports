COMMENT=	file matching and globbing library

MODPY_DISTV=	10.0
DISTNAME=	wcmatch-${MODPY_DISTV}
PKGNAME=	py-wcmatch-${MODPY_DISTV}
REVISION=	0

CATEGORIES=	devel textproc

# MIT
PERMIT_PACKAGE=Yes

MODULES=	lang/python

MODPY_PI=	Yes

MODPY_PYBUILD=	hatchling

RUN_DEPENDS=	textproc/py-bracex

# needed for tests (and one fails anyway, probably due to ~user expansion)
PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
