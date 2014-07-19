# $OpenBSD: Makefile,v 1.17 2014/07/19 22:20:28 naddy Exp $

COMMENT=		utility for Rio mp3 players

DISTNAME=		rioutil-1.4.4
REVISION=		2
SHARED_LIBS +=	rioutil              5.1      # .5.1
CATEGORIES=		audio

HOMEPAGE=		http://rioutil.sf.net

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c usb z pthread usb-1.0

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=rioutil/}

LIB_DEPENDS=		devel/libusb-compat

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-libusb
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
