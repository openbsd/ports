# $OpenBSD: Makefile,v 1.6 2010/11/20 17:22:41 espie Exp $

COMMENT=		ncurses-based du(1)

DISTNAME=		ncdu-1.7
CATEGORIES=		sysutils

HOMEPAGE=		http://dev.yorhel.nl/ncdu/

MASTER_SITES=		http://dev.yorhel.nl/download/ \
			${MASTER_SITE_SOURCEFORGE:=ncdu/}

# MIT
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c ncursesw

CONFIGURE_STYLE=	gnu
USE_GROFF =		Yes

.include <bsd.port.mk>
