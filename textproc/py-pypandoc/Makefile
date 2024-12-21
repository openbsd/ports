COMMENT=	Python wrapper for pandoc

MODPY_DISTV=	1.13
DISTNAME=	pypandoc-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/bebraw/pypandoc

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	poetry-core
MODPY_PYTEST_ARGS=	tests.py

RUN_DEPENDS=	textproc/pandoc

PORTHOME=	${WRKDIR}
TEST_DEPENDS=	print/texlive/texmf,-main \
		textproc/pandoc

.include <bsd.port.mk>
