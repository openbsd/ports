# $OpenBSD: Makefile,v 1.19 2019/07/12 20:46:21 sthen Exp $

COMMENT=	drive some car across the moon

DISTNAME =	moon-buggy-1.0.51
REVISION =	0
CATEGORIES=    	games	
HOMEPAGE=	http://seehuhn.de/pages/moon-buggy

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://seehuhn.de/media/programs/

WANTLIB=	c curses m

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--sharedstatedir=/var --with-setgid=games
USE_GMAKE=  	Yes

.include <bsd.port.mk>
