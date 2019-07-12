# $OpenBSD: Makefile,v 1.18 2019/07/12 20:48:50 sthen Exp $

COMMENT=	5250 telnet protocol and terminal

DISTNAME=	tn5250-0.17.4
REVISION=	0

SHARED_LIBS=	5250	0.0

CATEGORIES=	net

HOMEPAGE=	http://tn5250.sourceforge.net/

# LGPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tn5250/}

WANTLIB=	curses c ssl crypto

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--enable-os-dir=no --with-ssl

USE_GMAKE=	Yes

.include <bsd.port.mk>
