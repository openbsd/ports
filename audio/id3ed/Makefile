# $OpenBSD: Makefile,v 1.23 2017/07/26 22:45:15 sthen Exp $

COMMENT=		interactive console id3 tag editor

DISTNAME=		id3ed-1.10.4
REVISION =		4
CATEGORIES=		audio

HOMEPAGE=		http://code.fluffytapeworm.com/projects/id3ed/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c curses m readline ${COMPILER_LIBCXX}

MASTER_SITES=		${HOMEPAGE}

NO_TEST=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
