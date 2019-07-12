# $OpenBSD: Makefile,v 1.26 2019/07/12 20:43:34 sthen Exp $

COMMENT=		interactive console id3 tag editor

DISTNAME=		id3ed-1.10.4
REVISION =		6
CATEGORIES=		audio

HOMEPAGE=		http://code.fluffytapeworm.com/projects/id3ed/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=		c curses m readline ${COMPILER_LIBCXX}

MASTER_SITES=		${HOMEPAGE}

COMPILER =		base-clang ports-gcc base-gcc

NO_TEST=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
