# $OpenBSD: Makefile,v 1.10 2010/11/20 17:22:41 espie Exp $

COMMENT=	provide fingerprint authentication

DISTNAME=	login_fingerprint-1.2
REVISION =	0
CATEGORIES=    	sysutils	

MASTER_SITES=	http://blade2k.humppa.hu/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes 

WANTLIB=		c crypto freetype fprint>=0 MagickCore>=1 \
			MagickWand>=1 usb


LIB_DEPENDS=		security/libfprint \
			graphics/ImageMagick \
			devel/libusb

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/login_fingerprint

pre-configure:
	@perl -pi -e "s@/usr/local@${PREFIX}@" ${WRKSRC}/login_fingerprint.8

.include <bsd.port.mk>
