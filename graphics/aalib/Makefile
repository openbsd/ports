# $OpenBSD: Makefile,v 1.44 2016/03/11 19:59:14 naddy Exp $

COMMENT=	ascii art library

DISTNAME=	aalib-1.4rc5
PKGNAME=	aalib-1.4
REVISION=	6
SHARED_LIBS=	aa	2.0
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=aa-project/}

HOMEPAGE=	http://aa-project.sourceforge.net/aalib/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m ncurses X11 xcb

CONFIGURE_STYLE= gnu

WRKDIST=	${WRKDIR}/aalib-1.4.0

NO_TEST=	Yes

.include <bsd.port.mk>
