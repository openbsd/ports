# $OpenBSD: Makefile,v 1.13 2010/10/18 18:00:18 espie Exp $

COMMENT=	drive some car across the moon

DISTNAME=	moon-buggy-1.0
CATEGORIES=    	games	
HOMEPAGE=	http://seehuhn.de/pages/moon-buggy

MAINTAINER=	Felix Kronlage <fkr@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://seehuhn.de/media/programs/

WANTLIB=	c curses m

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--sharedstatedir=/var --with-setgid=games
USE_GMAKE=  Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
