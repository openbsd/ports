COMMENT=	Python wrapper for pandoc

MODPY_DISTV=	1.14
DISTNAME=	pypandoc-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/bebraw/pypandoc

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/pandoc

PORTHOME=	${WRKDIR}
TEST_DEPENDS=	print/texlive/texmf,-main \
		textproc/pandoc

do-test:
	cd ${WRKSRC}; ${SETENV} ${ALL_TEST_ENV} ${MODPY_BIN} tests.py

.include <bsd.port.mk>
