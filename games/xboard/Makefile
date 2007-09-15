# $OpenBSD: Makefile,v 1.22 2007/09/15 18:01:03 simon Exp $

COMMENT=	X11 frontend for GNU Chess and the Internet Chess Server

DISTNAME=       xboard-4.2.7
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_GNU:=xboard/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xpm Xt c m

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
ALL_TARGET=		default

.include <bsd.port.mk>
