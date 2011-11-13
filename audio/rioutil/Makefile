# $OpenBSD: Makefile,v 1.13 2011/11/13 13:54:04 ajacoutot Exp $

COMMENT=		utility for Rio mp3 players

DISTNAME=		rioutil-1.4.4
REVISION=		2
SHARED_LIBS +=	rioutil              5.1      # .5.1
CATEGORIES=		audio

HOMEPAGE=		http://rioutil.sf.net

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c usb z pthread usb-1.0

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=rioutil/}

LIB_DEPENDS=		devel/libusb-compat

USE_LIBTOOL=		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-libusb
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"

.include <bsd.port.mk>
