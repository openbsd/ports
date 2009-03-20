# $OpenBSD: Makefile,v 1.1.1.1 2009/03/20 13:53:04 eric Exp $

COMMENT=		c++ library for common image format

DISTNAME=		FreeImage3110
PKGNAME=		freeimage-3.11.0
CATEGORIES=		graphics

SHARED_LIBS+=		freeimage	1.0

HOMEPAGE=		http://freeimage.sourceforge.net/

MAINTAINER=		Eric Faurot <eric@openbsd.org>

# GPL / "FreeImage Public Nons^WLicense"
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes 

WANTLIB=		stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=freeimage/}
EXTRACT_SUFX=		.zip

WRKDIST=		${WRKDIR}/FreeImage

USE_GMAKE=		Yes

MAKE_ENV=		LIBfreeimage_VERSION=${LIBfreeimage_VERSION}
MAKE_TARGET=		Makefile.gnu


.include <bsd.port.mk>
