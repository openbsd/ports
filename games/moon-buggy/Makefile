# $OpenBSD: Makefile,v 1.6 2004/11/14 10:31:08 alek Exp $

COMMENT=	"drive some car across the moon"

DISTNAME=	moon-buggy-0.5.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=    	games	
HOMEPAGE=	http://hangout.de/moon-buggy/

MAINTAINER=	Felix Kronlage <fkr@grummel.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SUNSITE:=games/arcade/}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--sharedstatedir=/var/games --with-setgid=games

.include <bsd.port.mk>
