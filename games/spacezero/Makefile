# $OpenBSD: Makefile,v 1.7 2019/07/12 20:46:24 sthen Exp $

COMMENT =	2D RTS space combat game
DISTNAME =	spacezero-0.86.00
CATEGORIES =	games x11
REVISION =	1

HOMEPAGE =	http://spacezero.sourceforge.net/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender alut atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 iconv
WANTLIB += intl m openal pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread
WANTLIB += vorbisfile z

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
