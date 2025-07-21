COMMENT=	ascii art library

DISTNAME=	aalib-1.4rc5
PKGNAME=	aalib-1.4
REVISION=	9
SHARED_LIBS=	aa	2.0
CATEGORIES=	graphics
SITES=		${SITE_SOURCEFORGE:=aa-project/}

HOMEPAGE=	https://aa-project.sourceforge.net/aalib/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 c m curses pthread xcb

CONFIGURE_STYLE= gnu

WRKDIST=	${WRKDIR}/aalib-1.4.0

NO_TEST=	Yes

.include <bsd.port.mk>
