# $OpenBSD: Makefile,v 1.5 2015/01/22 17:47:51 naddy Exp $

COMMENT =		editor war arcade game

DISTNAME =		wordwarvi-1.00
REVISION =		1

CATEGORIES =		games

HOMEPAGE =		http://wordwarvi.sourceforge.net/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2 / CC licenses for soundfiles
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB  = GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png portaudio pthread pthread-stubs
WANTLIB += sndio vorbis vorbisfile xcb xcb-render xcb-shm z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=wordwarvi/}

MODULES =		devel/gettext

LIB_DEPENDS =		audio/libvorbis \
			audio/portaudio-svn \
			x11/gtk+2

USE_GMAKE =		Yes

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
