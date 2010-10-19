# $OpenBSD: Makefile,v 1.5 2010/10/19 07:54:21 espie Exp $

COMMENT =		convert DocBook to LaTeX, DVI, PostScript, and PDF
DISTNAME =		dblatex-0.3
REVISION=		2
CATEGORIES =		textproc

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

HOMEPAGE =		http://dblatex.sourceforge.net
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=dblatex/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python
MODPY_DISTUTILS_INSTALL =install --prefix=${LOCALBASE} \
				--root=${DESTDIR} \
				--catalogs=${LOCALBASE}/share/xsl/docbook

RUN_DEPENDS =		::print/texlive/base \
			::print/texlive/texmf,-full \
			::print/texlive/texmf,-main \
			::textproc/libxslt \
			::textproc/docbook-xsl \
			:ImageMagick-*:graphics/ImageMagick
BUILD_DEPENDS = 	${RUN_DEPENDS}
USE_GROFF =	Yes
NO_REGRESS =		Yes

SUBST_VARS +=		LOCALBASE MODPY_BIN

post-extract:
	@cd ${WRKSRC}/docs/manpage/ && gunzip dblatex.1.gz

post-install:
	@rm -r ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/contrib
	${SUBST_CMD} -c ${FILESDIR}/dblatex ${WRKSRC}/scripts/dblatex
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/dblatex ${PREFIX}/bin/dblatex

.include <bsd.port.mk>
