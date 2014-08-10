# $OpenBSD: Makefile,v 1.14 2014/08/10 09:58:06 espie Exp $

COMMENT =		convert DocBook to LaTeX, DVI, PostScript, and PDF
DISTNAME =		dblatex-0.3
REVISION =		8
CATEGORIES =		textproc

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

HOMEPAGE =		http://dblatex.sourceforge.net
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=dblatex/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python
MODPY_DISTUTILS_INSTALL =install --prefix=${LOCALBASE} \
				--root=${DESTDIR} \
				--catalogs=${LOCALBASE}/share/xsl/docbook

RUN_DEPENDS =		print/texlive/texmf,-full \
			textproc/docbook-xsl \
			graphics/ImageMagick
BUILD_DEPENDS =		print/texlive/base \
			textproc/docbook-xsl \
			graphics/ImageMagick
NO_TEST =		Yes

SUBST_VARS +=		LOCALBASE MODPY_BIN

post-extract:
	@cd ${WRKSRC}/docs/manpage/ && gunzip dblatex.1.gz

post-install:
	@rm -r ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/contrib
	${SUBST_PROGRAM} ${FILESDIR}/dblatex ${PREFIX}/bin/dblatex

.include <bsd.port.mk>
