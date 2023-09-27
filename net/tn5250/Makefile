COMMENT=	5250 telnet protocol and terminal

DISTNAME=	tn5250-0.17.4
REVISION=	2

SHARED_LIBS=	5250	0.0

CATEGORIES=	net

HOMEPAGE=	https://tn5250.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

SITES=		${SITE_SOURCEFORGE:=tn5250/}

WANTLIB=	curses c ssl crypto

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--enable-os-dir=no \
			--with-ssl

.include <bsd.port.mk>
