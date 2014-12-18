# $OpenBSD: Makefile,v 1.17 2014/12/18 10:54:13 benoit Exp $

COMMENT=	drive some car across the moon

DISTNAME =	moon-buggy-1.0.51
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
