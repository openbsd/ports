# $OpenBSD: Makefile,v 1.2 2001/05/06 01:06:15 lebel Exp $

COMMENT=	"drive some car across the moon"

DISTNAME=	moon-buggy-0.5.1
CATEGORIES=    	games	
NEED_VERSION=	1.402
HOMEPAGE=	http://www.mathematik.uni-kl.de/~wwwstoch/voss/moon-buggy.html	

MAINTAINER=	Felix Kronlage <fkr@grummel.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	games/arcade

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--sharedstatedir=/var/games --with-setgid=games

.include <bsd.port.mk>
