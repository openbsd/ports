# $OpenBSD: Makefile,v 1.13 2015/02/16 22:57:11 naddy Exp $

COMMENT=	5250 telnet protocol and terminal

DISTNAME=	tn5250-0.17.3
REVISION=	2
SHARED_LIBS=	5250	0.0
CATEGORIES=	net

HOMEPAGE=	http://tn5250.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tn5250/}

WANTLIB=	ncurses c ssl crypto

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-os-dir=no --with-ssl

USE_GMAKE=	Yes

.include <bsd.port.mk>
