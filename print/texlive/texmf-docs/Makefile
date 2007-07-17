# $OpenBSD: Makefile,v 1.1.1.1 2007/07/17 21:56:11 jasper Exp $

COMMENT=		documentation texmf tree for TeXLive

V=			2007
DISTNAME=		texlive_texmf-docs-${V}
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

pre-install:
	@# Blast away man/info pages, -base installed these already 
	rm -Rf ${WRKDIST}/texmf/doc/man
	rm -Rf ${WRKDIST}/texmf/doc/info

do-install:
	@# Simple copy for install
	umask 022 && \
		cp -r ${WRKDIST}/texmf ${PREFIX}/share && \
		cp -r ${WRKDIST}/texmf-dist ${PREFIX}/share

.include <bsd.port.mk>
