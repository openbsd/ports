# $OpenBSD: Makefile,v 1.10 2017/05/06 13:45:49 fcambus Exp $

COMMENT =	simple (or small or suckless) X Image Viewer

GH_PROJECT =	sxiv
GH_ACCOUNT =	muennich
GH_TAGNAME =	v1.3.2
REVISION =	0

CATEGORIES =	graphics x11

MAINTAINER =	Matthew Via <via@matthewvia.info>

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=	Imlib2 exif gif X11 c

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	graphics/imlib2 \
		graphics/libexif

MAKE_FLAGS =	CC=${CC} MANPREFIX=${PREFIX}/man \
		CFLAGS="${CFLAGS} -I${X11BASE}/include -I${PREFIX}/include" \
		LDFLAGS="-L${PREFIX}/lib -L${X11BASE}/lib -lX11 -lImlib2 -lexif -lgif"

NO_TEST =	Yes

post-install:
	cd ${WRKSRC}/icon && make install
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/sxiv.desktop ${PREFIX}/share/applications

.include <bsd.port.mk>
