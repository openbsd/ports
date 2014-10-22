# $OpenBSD: Makefile,v 1.6 2014/10/22 13:10:44 gonzalo Exp $

COMMENT=		network traffic and bandwidth usage in real time

DISTNAME=		nload-0.7.4
REVISION=		0
CATEGORIES=		net

HOMEPAGE=		http://www.roland-riegel.de/nload/
MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes

WANTLIB=		c form m ncurses stdc++

.include <bsd.port.mk>
