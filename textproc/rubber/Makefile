COMMENT=	wrapper for LaTeX and friends

MODPY_DISTV=	1.6.7
DISTNAME=	latex_rubber-${MODPY_DISTV}
PKGNAME=	rubber-${MODPY_DISTV}

CATEGORIES=	textproc print

HOMEPAGE=	https://gitlab.com/latex-rubber/rubber

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

BUILD_DEPENDS=	print/texlive/base
RUN_DEPENDS=	print/texlive/base
TEST_DEPENDS=	devel/py-prompt_toolkit \
		graphics/ImageMagick \
		graphics/asymptote \
		print/texlive/texmf,-full \
		print/transfig \
		shells/bash \
		sysutils/coreutils

do-test:
.for i in mktemp touch wc head
	ln -fs ${LOCALBASE}/bin/g$i ${WRKDIR}/bin/$i
.endfor
	ln -fs ${WRKINST}${PREFIX}/bin ${WRKSRC}/bin
	for i in biblatex* combine cweb-latex \
	    graphicx-dotted-files knitr lualatex pythontex; \
	    do touch ${WRKSRC}/tests/$$i/disable; done
	cd ${WRKSRC}/tests; \
	    ${SETENV} ${ALL_TEST_ENV} ./run.sh [p-z]*

.include <bsd.port.mk>
