COMMENT=	file matching and globbing library

MODPY_DISTV=	10.1
DISTNAME=	wcmatch-${MODPY_DISTV}
PKGNAME=	py-wcmatch-${MODPY_DISTV}

CATEGORIES=	devel textproc

# MIT
PERMIT_PACKAGE=Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/py-bracex

# needed for tests (and one fails anyway, probably due to ~user expansion)
PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
