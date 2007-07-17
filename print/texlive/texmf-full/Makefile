# $OpenBSD: Makefile,v 1.1.1.1 2007/07/17 21:55:02 jasper Exp $

COMMENT=		full texmf tree for TeXLive

V=			2007
DISTNAME=		texlive_texmf-full-${V}
CATEGORIES=		print

HOMEPAGE=		http://tug.org/texlive/

MAINTAINER=             Edd Barrett <vext01@gmail.com>

# http://tug.org/texlive/LICENSE.TL
PERMIT_PACKAGE_CDROM=  	Yes
PERMIT_PACKAGE_FTP=    	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=  	Yes

MASTER_SITES=		http://students.dec.bournemouth.ac.uk/ebarrett/texlive/distfiles/

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
