# $OpenBSD: Makefile,v 1.24 2013/10/11 20:40:14 naddy Exp $

COMMENT=		snowy and Santa-y desktop

DISTNAME=		xsnow-1.42
REVISION=		2
CATEGORIES=		x11

HOMEPAGE=		http://dropmix.xs4all.nl/rick/Xsnow/

MAINTAINER=		Victor Sahlstedt <salan@legonet.org>

PERMIT_PACKAGE_CDROM=	vague license
PERMIT_PACKAGE_FTP=	vague license
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xau Xdmcp Xext Xpm c m 

MASTER_SITES=		${HOMEPAGE}

USE_GROFF =		Yes
CONFIGURE_STYLE=	imake

NO_TEST=		Yes

.include <bsd.port.mk>
