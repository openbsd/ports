# $OpenBSD: Makefile,v 1.20 2017/04/10 11:45:23 sthen Exp $

COMMENT=		interactive console id3 tag editor

DISTNAME=		id3ed-1.10.4
REVISION=		2
CATEGORIES=		audio

HOMEPAGE=		http://code.fluffytapeworm.com/projects/id3ed/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c curses m readline ${LIBCXX}

MASTER_SITES=		${HOMEPAGE}

NO_TEST=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
