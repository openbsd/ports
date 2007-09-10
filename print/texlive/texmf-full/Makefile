# $OpenBSD: Makefile,v 1.3 2007/09/10 14:50:50 steven Exp $

COMMENT=		additional texmf functionality for TeXLive

V=			2007
# distfile generation number (distfiles can change for same TeXLive version)
G=			g0
DISTNAME=		texlive_texmf-full-$V$G
PKGNAME=		texlive_texmf-full-$Vp0

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

RUN_DEPENDS=		:texlive_base-${V}*:print/texlive/base \
			::graphics/ImageMagick

pre-install:
	rm -Rf ${WRKDIST}/texmf-dist/source
# man pages are installed by the base package
	rm -Rf ${WRKDIST}/texmf/doc/man
# fix broken bbold font
	rm -f ${WRKDIST}/texmf-dist/tex/latex/sauterfonts/subbold.fd

do-install:
	mv ${WRKDIST}/texmf ${PREFIX}/share
	mv ${WRKDIST}/texmf-dist ${PREFIX}/share
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/*

.include <bsd.port.mk>
