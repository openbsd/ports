# $OpenBSD: Makefile,v 1.16 2010/11/15 00:22:47 espie Exp $

COMMENT=		interactive console id3 tag editor

DISTNAME=		id3ed-1.10.4
REVISION=		1
CATEGORIES=     	audio

HOMEPAGE=		http://users.dakotacom.net/~donut/programs/id3ed.html

MAINTAINER=		Nick Nauwelaerts <nick@nauwelaerts.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c curses m readline stdc++

MASTER_SITES=		${HOMEPAGE:S/id3ed.html//:=id3ed/}

NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu
USE_GROFF =		Yes

.include <bsd.port.mk>
