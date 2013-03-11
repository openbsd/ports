# $OpenBSD: Makefile,v 1.23 2013/03/11 11:46:19 espie Exp $

COMMENT=		snowy and Santa-y desktop

DISTNAME=		xsnow-1.42
REVISION=		1
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
