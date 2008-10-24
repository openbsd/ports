# $OpenBSD: Makefile,v 1.2 2008/10/24 12:09:37 jasper Exp $

COMMENT=		ncurses-based du(1)

DISTNAME=		ncdu-1.4
CATEGORIES=		sysutils

HOMEPAGE=		http://dev.yorhel.nl/ncdu/

MASTER_SITES=		http://dev.yorhel.nl/download/ \
			${MASTER_SITE_SOURCEFORGE:=ncdu/}

# MIT
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c ncurses

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
