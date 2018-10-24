# $OpenBSD: Makefile,v 1.12 2018/10/24 14:28:09 sthen Exp $

COMMENT=		network traffic and bandwidth usage in real time

DISTNAME=		nload-0.7.4
REVISION =		4
CATEGORIES=		net

HOMEPAGE=		http://www.roland-riegel.de/nload/
MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c form m ncurses ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes

.include <bsd.port.mk>
