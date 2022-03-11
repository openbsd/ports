COMMENT =	2D RTS space combat game
DISTNAME =	spacezero-0.86.00
CATEGORIES =	games x11
REVISION =	2

HOMEPAGE =	http://spacezero.sourceforge.net/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender alut atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 harfbuzz intl m openal pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread vorbisfile z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=spacezero/}

LIB_DEPENDS =	audio/freealut \
		audio/openal \
		audio/libvorbis \
		x11/gtk+2

MAKE_FLAGS =	CC="${CC}" INSTALL_DATA_DIR=${PREFIX}/share/spacezero

NO_TEST =	Yes
WRKDIST =	${WRKDIR}/spacezero
PORTHOME =	${WRKDIST}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/spacezero ${PREFIX}/bin
	cd ${WRKSRC}/dat && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/spacezero/{}" \;
	cd ${WRKSRC}/dat && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/spacezero/{}" \;
	cd ${WRKSRC}/html && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/share/doc/spacezero/{}" \;
	cd ${WRKSRC}/html && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/share/doc/spacezero/{}" \;

.include <bsd.port.mk>
