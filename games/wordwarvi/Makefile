# $OpenBSD: Makefile,v 1.11 2019/07/12 20:46:26 sthen Exp $

COMMENT =		editor war arcade game

DISTNAME =		wordwarvi-1.00
REVISION =		4

CATEGORIES =		games

HOMEPAGE =		http://wordwarvi.sourceforge.net/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2 / CC licenses for soundfiles
PERMIT_PACKAGE =	Yes

WANTLIB =  GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo drm expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += iconv intl m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png portaudio pthread sndio vorbis vorbisfile xcb
WANTLIB += xcb-render xcb-shm z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=wordwarvi/}

LIB_DEPENDS =		audio/libvorbis \
			audio/portaudio-svn \
			x11/gtk+2

USE_GMAKE =		Yes
MAKE_FLAGS =		CC="${CC}" BUILD_CC="${CC}"

NO_TEST =		Yes

ALL_TARGET =		wordwarvi

pre-configure:
	${SUBST_CMD} ${WRKSRC}/wordwarvi.6

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wordwarvi ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/wordwarvi/sounds
	${INSTALL_DATA} ${WRKSRC}/sounds/*.ogg ${PREFIX}/share/wordwarvi/sounds
	${INSTALL_MAN} ${WRKSRC}/wordwarvi.6 ${PREFIX}/man/man6
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wordwarvi
.for _f in AUTHORS COPYING changelog.txt
	${INSTALL_DATA} ${WRKSRC}/${_f} ${PREFIX}/share/doc/wordwarvi
.endfor

.include <bsd.port.mk>
