# $OpenBSD: Makefile,v 1.2 2011/06/15 15:19:05 sthen Exp $

COMMENT=		network traffic and bandwidth usage in real time

DISTNAME=		nload-0.7.3
CATEGORIES=		net

HOMEPAGE=		http://www.roland-riegel.de/nload/
MAINTAINER=		Gonzalo L. R. <gonzalo@x61.com.ar>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.roland-riegel.de/nload/ \
			http://x61.com.ar/nload/

CONFIGURE_STYLE= gnu

WANTLIB=		c form m ncurses stdc++

.include <bsd.port.mk>
