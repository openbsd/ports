# $OpenBSD: Makefile,v 1.12 2011/11/13 13:54:05 ajacoutot Exp $

COMMENT=	provide fingerprint authentication

DISTNAME=	login_fingerprint-1.2
REVISION =	1
CATEGORIES=    	sysutils	

MASTER_SITES=	http://blade2k.humppa.hu/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes 

WANTLIB=		c crypto freetype fprint>=0 MagickCore>=1 \
			MagickWand>=1 usb pthread

LIB_DEPENDS=		security/libfprint>=0.0.6p6 \
			graphics/ImageMagick

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/login_fingerprint

FAKE_FLAGS=	BINDIR=${PREFIX}/libexec/auth \
		DOCDIR=${PREFIX}/share/doc/login_fingerprint \
		MANDIR=${PREFIX}/man/man

pre-configure:
	@perl -pi -e "s@/usr/local@${PREFIX}@" ${WRKSRC}/login_fingerprint.8

.include <bsd.port.mk>
