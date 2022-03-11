COMMENT =		editor war arcade game

DISTNAME =		wordwarvi-1.00
REVISION =		5

CATEGORIES =		games

HOMEPAGE =		http://wordwarvi.sourceforge.net/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2 / CC licenses for soundfiles
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 portaudio pthread vorbisfile z

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
