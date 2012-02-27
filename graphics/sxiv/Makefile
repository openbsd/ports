# $OpenBSD: Makefile,v 1.1.1.1 2012/02/27 08:45:50 bentley Exp $

COMMENT =	simple (or small or suckless) X Image Viewer

DISTNAME =	sxiv-1.0

CATEGORIES =	graphics

HOMEPAGE =	https://github.com/muennich/sxiv

MAINTAINER =	Matthew Via <via@matthewvia.info>

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes 
PERMIT_PACKAGE_FTP =		Yes 
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB +=	Imlib2 X11 c

LIB_DEPENDS =	graphics/imlib2

MAKE_FLAGS =	CC=${CC} MANPREFIX=${PREFIX}/man \
		CFLAGS="${CFLAGS} -I${X11BASE}/include -I${PREFIX}/include" \
		LDFLAGS="-L${PREFIX}/lib -L${X11BASE}/lib -lX11 -lImlib2"

MASTER_SITES =	https://github.com/muennich/sxiv/downloads/

NO_REGRESS =	Yes

.include <bsd.port.mk>
