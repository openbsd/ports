# $OpenBSD: Makefile,v 1.19 2020/08/02 12:33:54 jasper Exp $

COMMENT=	5250 telnet protocol and terminal

DISTNAME=	tn5250-0.17.4
REVISION=	1

SHARED_LIBS=	5250	0.0

CATEGORIES=	net

HOMEPAGE=	http://tn5250.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tn5250/}

WANTLIB=	curses c ssl crypto

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--enable-os-dir=no \
			--with-ssl

.include <bsd.port.mk>
