# $OpenBSD: Makefile,v 1.9 2013/03/10 22:55:03 espie Exp $

COMMENT=		communicate with some Creative and Dell audio players

DISTNAME=		libnjb-2.2.6
REVISION=		1
SHARED_LIBS=		njb	0.0	# .6.0
CATEGORIES=		audio devel

HOMEPAGE=		http://libnjb.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c curses usb z pthread usb-1.0

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libnjb/}

LIB_DEPENDS=		devel/libusb-compat

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libnjb/
	${INSTALL_DATA} ${WRKSRC}/{FAQ,HACKING,README} \
		${PREFIX}/share/doc/libnjb/

.include <bsd.port.mk>
