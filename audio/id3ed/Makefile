# $OpenBSD: Makefile,v 1.24 2018/05/12 10:00:24 espie Exp $

COMMENT=		interactive console id3 tag editor

DISTNAME=		id3ed-1.10.4
REVISION =		5
CATEGORIES=		audio

HOMEPAGE=		http://code.fluffytapeworm.com/projects/id3ed/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c curses m readline ${COMPILER_LIBCXX}

MASTER_SITES=		${HOMEPAGE}

NO_TEST=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
