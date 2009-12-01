# $OpenBSD: Makefile,v 1.18 2009/12/01 08:53:52 jasper Exp $

COMMENT=		snowy and Santa-y desktop

DISTNAME=		xsnow-1.42
PKGNAME=		${DISTNAME}p1
CATEGORIES=		x11

HOMEPAGE=		http://dropmix.xs4all.nl/rick/Xsnow/

MAINTAINER=		Victor Sahlstedt <salan@legonet.org>

PERMIT_PACKAGE_CDROM=	vague license
PERMIT_PACKAGE_FTP=	vague license
PERMIT_DISTFILES_CDROM=	vague license
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xau Xdmcp Xext Xpm c m 

MASTER_SITES=		${HOMEPAGE}

USE_X11=		Yes
CONFIGURE_STYLE=	imake

NO_REGRESS=		Yes

.include <bsd.port.mk>
