COMMENT =		convert DocBook to LaTeX, DVI, PostScript, and PDF
V =			0.3.12
DISTNAME =		dblatex3-$V
PKGNAME =		dblatex-$V
CATEGORIES =		textproc

# GPLv2+
PERMIT_PACKAGE =	Yes

HOMEPAGE =		https://dblatex.sourceforge.net
SITES =			${SITE_SOURCEFORGE:=dblatex/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
USE_GMAKE =		Yes
MODPY_PYBUILD_ARGS =	--config-setting=docbook_xsl=${LOCALBASE}/share/xsl/docbook

RUN_DEPENDS =		print/texlive/texmf,-full \
			textproc/docbook-xsl \
			graphics/ImageMagick
BUILD_DEPENDS =		print/texlive/base \
			textproc/docbook-xsl \
			graphics/ImageMagick

post-install:
	${SUBST_PROGRAM} ${FILESDIR}/dblatex ${PREFIX}/bin/dblatex
	gunzip ${PREFIX}/man/man1/dblatex.1.gz

do-test:
	cd ${WRKSRC}/tests/mathml; gmake

.include <bsd.port.mk>
