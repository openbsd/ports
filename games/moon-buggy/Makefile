# $OpenBSD: Makefile,v 1.7 2005/11/01 14:07:20 naddy Exp $

COMMENT=	"drive some car across the moon"

DISTNAME=	moon-buggy-0.5.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=    	games	
HOMEPAGE=	http://hangout.de/moon-buggy/

MAINTAINER=	Felix Kronlage <fkr@grummel.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SUNSITE:=games/arcade/}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--sharedstatedir=/var --with-setgid=games

.include <bsd.port.mk>
