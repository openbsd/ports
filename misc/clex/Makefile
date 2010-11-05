# $OpenBSD: Makefile,v 1.11 2010/11/05 08:24:49 sthen Exp $

COMMENT=		commandline shell and file manager

DISTNAME=		clex-3.15
CATEGORIES=		misc

HOMEPAGE=		http://www.clex.sk/

MAINTAINER=		Victor Sahlstedt <salan@legonet.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c ncurses

MASTER_SITES=		${HOMEPAGE:=download/}

CONFIGURE_STYLE=	gnu
USE_GROFF =	Yes

.include <bsd.port.mk>
