# $OpenBSD: Makefile,v 1.46 2019/07/12 20:46:56 sthen Exp $

COMMENT=	ascii art library

DISTNAME=	aalib-1.4rc5
PKGNAME=	aalib-1.4
REVISION=	7
SHARED_LIBS=	aa	2.0
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=aa-project/}

HOMEPAGE=	http://aa-project.sourceforge.net/aalib/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=		c m curses X11 xcb

CONFIGURE_STYLE= gnu

WRKDIST=	${WRKDIR}/aalib-1.4.0

NO_TEST=	Yes

.include <bsd.port.mk>
