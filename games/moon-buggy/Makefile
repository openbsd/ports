# $OpenBSD: Makefile,v 1.4 2002/12/29 15:10:08 fgsch Exp $

COMMENT=	"drive some car across the moon"

DISTNAME=	moon-buggy-0.5.1
CATEGORIES=    	games	
HOMEPAGE=	http://www.mathematik.uni-kl.de/~wwwstoch/voss/moon-buggy.html	

MAINTAINER=	Felix Kronlage <fkr@grummel.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SUNSITE:=games/arcade/}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--sharedstatedir=/var/games --with-setgid=games

.include <bsd.port.mk>
