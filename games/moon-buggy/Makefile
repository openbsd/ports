# $OpenBSD: Makefile,v 1.16 2013/10/11 23:49:38 naddy Exp $

COMMENT=	drive some car across the moon

DISTNAME=	moon-buggy-1.0
CATEGORIES=    	games	
HOMEPAGE=	http://seehuhn.de/pages/moon-buggy

MAINTAINER=	Felix Kronlage <fkr@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://seehuhn.de/media/programs/

WANTLIB=	c curses m

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--sharedstatedir=/var --with-setgid=games
USE_GMAKE=  	Yes

.include <bsd.port.mk>
