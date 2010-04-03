# $OpenBSD: Makefile,v 1.6 2010/04/03 22:45:14 schwarze Exp $

COMMENT=	provide fingerprint authentication

DISTNAME=	login_fingerprint-1.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=    	sysutils	

MASTER_SITES=	http://blade2k.humppa.hu/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes 

WANTLIB=		c crypto freetype


LIB_DEPENDS=		fprint.>=0::security/libfprint \
			MagickCore.>=1,MagickWand.>=1::graphics/ImageMagick \
			usb::devel/libusb

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/login_fingerprint

pre-configure:
	@perl -pi -e "s@/usr/local@${PREFIX}@" ${WRKSRC}/login_fingerprint.8

.include <bsd.port.mk>
