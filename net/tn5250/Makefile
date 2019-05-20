# $OpenBSD: Makefile,v 1.17 2019/05/20 20:52:35 sthen Exp $

COMMENT=	5250 telnet protocol and terminal

DISTNAME=	tn5250-0.17.4
REVISION=	0

SHARED_LIBS=	5250	0.0

CATEGORIES=	net

HOMEPAGE=	http://tn5250.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tn5250/}

WANTLIB=	curses c ssl crypto

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--enable-os-dir=no --with-ssl

USE_GMAKE=	Yes

.include <bsd.port.mk>
