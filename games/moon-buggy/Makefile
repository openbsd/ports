# $OpenBSD: Makefile,v 1.18 2018/04/09 07:48:38 jasper Exp $

COMMENT=	drive some car across the moon

DISTNAME =	moon-buggy-1.0.51
REVISION =	0
CATEGORIES=    	games	
HOMEPAGE=	http://seehuhn.de/pages/moon-buggy

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://seehuhn.de/media/programs/

WANTLIB=	c curses m

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--sharedstatedir=/var --with-setgid=games
USE_GMAKE=  	Yes

.include <bsd.port.mk>
