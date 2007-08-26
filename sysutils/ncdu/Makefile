# $OpenBSD: Makefile,v 1.1.1.1 2007/08/26 22:28:41 jasper Exp $

COMMENT=		ncurses-based du(1)

DISTNAME=		ncdu-1.3
CATEGORIES=		sysutils

HOMEPAGE=		http://dev.yorhel.nl/ncdu/

MASTER_SITES=		http://dev.yorhel.nl/download/ \
			${MASTER_SITE_SOURCEFORGE:=ncdu/}

# MIT
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c form ncurses

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
