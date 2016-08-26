# $OpenBSD: Makefile,v 1.13 2016/08/26 21:19:44 jca Exp $

COMMENT=		ncurses-based du(1)

DISTNAME=		ncdu-1.12
CATEGORIES=		sysutils

HOMEPAGE=		http://dev.yorhel.nl/ncdu/

MASTER_SITES=		http://dev.yorhel.nl/download/ \
			${MASTER_SITE_SOURCEFORGE:=ncdu/}

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c ncursesw

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
