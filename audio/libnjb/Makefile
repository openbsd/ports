# $OpenBSD: Makefile,v 1.1.1.1 2007/01/07 19:34:57 jasper Exp $

COMMENT=		"communicate with some Creative and Dell audio players"

DISTNAME=		libnjb-2.2.5
SHARED_LIBS=		njb	0.0	# .6.0
CATEGORIES=		audio devel

HOMEPAGE=		http://libnjb.sourceforge.net/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libnjb/}

LIB_DEPENDS=		usb.>=8::devel/libusb

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libnjb/
	${INSTALL_DATA} ${WRKSRC}/{FAQ,HACKING,README} \
		${PREFIX}/share/doc/libnjb/

.include <bsd.port.mk>
