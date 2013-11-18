# $OpenBSD: Makefile,v 1.4 2013/11/18 17:01:11 jung Exp $

COMMENT =	simple (or small or suckless) X Image Viewer

V=		1.1.1
DISTNAME=	v${V}
DIST_SUBDIR=	sxiv
PKGNAME=	sxiv-${V}

CATEGORIES =	graphics

HOMEPAGE =	https://github.com/muennich/sxiv

MAINTAINER =	Matthew Via <via@matthewvia.info>

MASTER_SITES=	${HOMEPAGE}/archive/

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=	Imlib2 X11 c

LIB_DEPENDS =	graphics/imlib2

MAKE_FLAGS =	CC=${CC} MANPREFIX=${PREFIX}/man \
		CFLAGS="${CFLAGS} -I${X11BASE}/include -I${PREFIX}/include" \
		LDFLAGS="-L${PREFIX}/lib -L${X11BASE}/lib -lX11 -lImlib2"

NO_TEST =	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
