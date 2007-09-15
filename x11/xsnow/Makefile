# $OpenBSD: Makefile,v 1.16 2007/09/15 20:04:28 merdely Exp $

COMMENT=		snowy and Santa-y desktop

DISTNAME=		xsnow-1.42
CATEGORIES=		x11

HOMEPAGE=		http://www.euronet.nl/~rja/Xsnow/

MAINTAINER=		Victor Sahlstedt <salan@legonet.org>

PERMIT_PACKAGE_CDROM=	vague license
PERMIT_PACKAGE_FTP=	vague license
PERMIT_DISTFILES_CDROM=	vague license
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c m 

MASTER_SITES=		${HOMEPAGE}

USE_X11=		Yes
CONFIGURE_STYLE=	imake

NO_REGRESS=		Yes

.include <bsd.port.mk>
