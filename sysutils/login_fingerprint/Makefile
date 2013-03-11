# $OpenBSD: Makefile,v 1.15 2013/03/11 11:41:30 espie Exp $

COMMENT=	provide fingerprint authentication

DISTNAME=	login_fingerprint-1.2
REVISION =	2
CATEGORIES=    	sysutils

MASTER_SITES=	http://blade2k.humppa.hu/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto freetype fprint>=1 MagickCore>=1 \
			MagickWand>=1 usb-1.0 pthread

LIB_DEPENDS=		security/libfprint>=0.4.0 \
			graphics/ImageMagick

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/login_fingerprint

FAKE_FLAGS=	BINDIR=${PREFIX}/libexec/auth \
		DOCDIR=${PREFIX}/share/doc/login_fingerprint \
		MANDIR=${PREFIX}/man/man

pre-configure:
	@perl -pi -e "s@/usr/local@${PREFIX}@" ${WRKSRC}/login_fingerprint.8

.include <bsd.port.mk>
