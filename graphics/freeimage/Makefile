# $OpenBSD: Makefile,v 1.4 2012/10/15 15:18:32 sthen Exp $

COMMENT=		c++ library for common image format

DISTNAME=		FreeImage3152
PKGNAME=		freeimage-3.15.2
REVISION=		0
CATEGORIES=		graphics

SHARED_LIBS+=		freeimage	2.0

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

MAKE_ENV=		LIBfreeimage_VERSION=${LIBfreeimage_VERSION} \
			CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS}"
MAKE_TARGET=		Makefile.gnu

post-extract:
	perl -pi -e 's/\015//g' ${WRKSRC}/Makefile.gnu

do-regress:
	cd ${WRKSRC}/TestAPI && ${MAKE_PROGRAM}

.include <bsd.port.mk>
