# $OpenBSD: Makefile,v 1.10 2007/09/19 14:08:33 fkr Exp $

COMMENT=	drive some car across the moon

DISTNAME=	moon-buggy-0.5.1
PKGNAME=	${DISTNAME}p3
CATEGORIES=    	games	
HOMEPAGE=	http://hangout.de/moon-buggy/

MAINTAINER=	Felix Kronlage <fkr@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SUNSITE:=games/arcade/}

WANTLIB=	c curses m

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--sharedstatedir=/var --with-setgid=games

.include <bsd.port.mk>
