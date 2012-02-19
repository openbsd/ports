# $OpenBSD: Makefile,v 1.3 2012/02/19 14:03:37 sthen Exp $

COMMENT=		network traffic and bandwidth usage in real time

DISTNAME=		nload-0.7.4
CATEGORIES=		net

HOMEPAGE=		http://www.roland-riegel.de/nload/
MAINTAINER=		Gonzalo L. R. <gonzalo@x61.com.ar>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		simple

WANTLIB=		c form m ncurses stdc++

.include <bsd.port.mk>
