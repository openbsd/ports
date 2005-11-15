# $OpenBSD: Makefile,v 1.1.1.1 2005/11/15 16:44:03 naddy Exp $

COMMENT=	"5250 telnet protocol and terminal"

DISTNAME=	tn5250-0.17.3
CATEGORIES=	net

HOMEPAGE=	http://tn5250.sourceforge.net/	

MAINTAINER=	Rui Reis <rui@rui.cx>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tn5250/}

WANTLIB=	ncurses c ssl crypto 

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE= 	gnu	
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-os-dir=no --with-ssl

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

.include <bsd.port.mk>
