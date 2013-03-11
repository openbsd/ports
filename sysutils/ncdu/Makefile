# $OpenBSD: Makefile,v 1.9 2013/03/11 11:41:31 espie Exp $

COMMENT=		ncurses-based du(1)

DISTNAME=		ncdu-1.9
CATEGORIES=		sysutils

HOMEPAGE=		http://dev.yorhel.nl/ncdu/

MASTER_SITES=		http://dev.yorhel.nl/download/ \
			${MASTER_SITE_SOURCEFORGE:=ncdu/}

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c ncursesw

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
