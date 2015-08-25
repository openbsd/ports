# $OpenBSD: Makefile,v 1.12 2015/08/25 13:18:27 sthen Exp $

COMMENT=		ncurses-based du(1)

DISTNAME=		ncdu-1.11
CATEGORIES=		sysutils
REVISION=		0

HOMEPAGE=		http://dev.yorhel.nl/ncdu/

MASTER_SITES=		http://dev.yorhel.nl/download/ \
			${MASTER_SITE_SOURCEFORGE:=ncdu/}

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c ncursesw

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
