# $OpenBSD: Makefile,v 1.22 2010/11/22 08:37:06 espie Exp $

COMMENT=		snowy and Santa-y desktop

DISTNAME=		xsnow-1.42
REVISION=		1
CATEGORIES=		x11

HOMEPAGE=		http://dropmix.xs4all.nl/rick/Xsnow/

MAINTAINER=		Victor Sahlstedt <salan@legonet.org>

PERMIT_PACKAGE_CDROM=	vague license
PERMIT_PACKAGE_FTP=	vague license
PERMIT_DISTFILES_CDROM=	vague license
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xau Xdmcp Xext Xpm c m 

MASTER_SITES=		${HOMEPAGE}

USE_GROFF =		Yes
CONFIGURE_STYLE=	imake

NO_REGRESS=		Yes

.include <bsd.port.mk>
