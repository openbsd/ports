COMMENT=	BM25 ranking algorithms for information retrieval

MODPY_DISTV=	0.2.2
DISTNAME=	rank_bm25-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/dorianbrown/rank_bm25

MAINTAINER=	Daniel Dickman <daniel@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	math/py-numpy

.include <bsd.port.mk>
