# $OpenBSD: Makefile,v 1.11 2015/04/06 19:24:19 bcallah Exp $

COMMENT=		ncurses-based du(1)

DISTNAME=		ncdu-1.11
CATEGORIES=		sysutils

HOMEPAGE=		http://dev.yorhel.nl/ncdu/

MAINTAINER =		Brian Callahan <bcallah@openbsd.org>

MASTER_SITES=		http://dev.yorhel.nl/download/ \
			${MASTER_SITE_SOURCEFORGE:=ncdu/}

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c ncursesw

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
