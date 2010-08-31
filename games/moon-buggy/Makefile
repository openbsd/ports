# $OpenBSD: Makefile,v 1.12 2010/08/31 08:15:44 ajacoutot Exp $

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

.include <bsd.port.mk>
