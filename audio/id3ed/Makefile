# $OpenBSD: Makefile,v 1.18 2013/10/11 23:48:04 naddy Exp $

COMMENT=		interactive console id3 tag editor

DISTNAME=		id3ed-1.10.4
REVISION=		1
CATEGORIES=     	audio

HOMEPAGE=		http://users.dakotacom.net/~donut/programs/id3ed.html

MAINTAINER=		Nick Nauwelaerts <nick@nauwelaerts.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c curses m readline stdc++

MASTER_SITES=		${HOMEPAGE:S/id3ed.html//:=id3ed/}

NO_TEST=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
