# $OpenBSD: Makefile,v 1.3 2013/03/11 11:10:55 espie Exp $

COMMENT =	simple (or small or suckless) X Image Viewer

DISTNAME =	sxiv-1.0

CATEGORIES =	graphics

HOMEPAGE =	https://github.com/muennich/sxiv

MAINTAINER =	Matthew Via <via@matthewvia.info>

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=	Imlib2 X11 c

LIB_DEPENDS =	graphics/imlib2

MAKE_FLAGS =	CC=${CC} MANPREFIX=${PREFIX}/man \
		CFLAGS="${CFLAGS} -I${X11BASE}/include -I${PREFIX}/include" \
		LDFLAGS="-L${PREFIX}/lib -L${X11BASE}/lib -lX11 -lImlib2"

MASTER_SITES =	https://github.com/muennich/sxiv/downloads/

NO_TEST =	Yes

.include <bsd.port.mk>
