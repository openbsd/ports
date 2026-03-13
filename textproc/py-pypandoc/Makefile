COMMENT=	Python wrapper for pandoc

MODPY_DISTV=	1.16.2
# next release will move poetry->hatchling
# also starts using Claude so evaluate if they're being careful..
GH_ACCOUNT=	bebraw
GH_PROJECT=	pypandoc
GH_TAGNAME=	v${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/bebraw/pypandoc

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core

RUN_DEPENDS=	textproc/pandoc

PORTHOME=	${WRKDIR}
TEST_DEPENDS=	print/texlive/texmf,-main \
		textproc/pandoc \
		textproc/py-pandocfilters

# some tests need network, and at least one fails if pandoc is compiled
# without HTTP support (and one checks output created from release.md
# which is not in sdists, so using GH_*)
MODPY_PYTEST_ARGS= tests.py

.include <bsd.port.mk>
