# $OpenBSD: Makefile,v 1.10 2013/06/20 14:58:59 bcallah Exp $

COMMENT=		ncurses-based du(1)

DISTNAME=		ncdu-1.10
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
