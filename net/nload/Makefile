# $OpenBSD: Makefile,v 1.14 2019/07/12 20:48:34 sthen Exp $

COMMENT=		network traffic and bandwidth usage in real time

DISTNAME=		nload-0.7.4
REVISION =		5
CATEGORIES=		net

HOMEPAGE=		http://www.roland-riegel.de/nload/
MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=		c form m curses ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes

.include <bsd.port.mk>
