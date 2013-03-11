# $OpenBSD: Makefile,v 1.5 2013/03/11 11:35:50 espie Exp $

COMMENT=		network traffic and bandwidth usage in real time

DISTNAME=		nload-0.7.4
CATEGORIES=		net

HOMEPAGE=		http://www.roland-riegel.de/nload/
MAINTAINER=		Gonzalo L. R. <gonzalo@x61.com.ar>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes

WANTLIB=		c form m ncurses stdc++

.include <bsd.port.mk>
