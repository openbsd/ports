# $OpenBSD: Makefile,v 1.6 2006/08/01 12:13:28 espie Exp $

COMMENT=		"utility for Rio mp3 players"

DISTNAME=		rioutil-1.4.4
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		rioutil	5.1
CATEGORIES=		audio

HOMEPAGE=		http://rioutil.sf.net

MAINTAINER=		Michael Coulter <mjc@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=rioutil/}

LIB_DEPENDS=		usb.>=7.0::devel/libusb

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-libusb
CONFIGURE_ENV=		CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

.include <bsd.port.mk>
