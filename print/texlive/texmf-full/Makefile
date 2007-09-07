# $OpenBSD: Makefile,v 1.2 2007/09/07 15:26:18 steven Exp $

COMMENT=		full texmf tree for TeXLive

V=			2007
DISTNAME=		texlive_texmf-full-${V}

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

RUN_DEPENDS=		:texlive_base-${V}:print/texlive/base \
			:ImageMagick-*:graphics/ImageMagick

pre-install:
	@# Blast away man pages, -base installed them already 
	rm -Rf ${WRKDIST}/texmf/doc/man

do-install:
	@# Simple copy for install
	umask 022 && \
		cp -r ${WRKDIST}/texmf ${PREFIX}/share && \
		cp -r ${WRKDIST}/texmf-dist ${PREFIX}/share

.include <bsd.port.mk>
