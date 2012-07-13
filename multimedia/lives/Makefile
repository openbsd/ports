# $OpenBSD: Makefile,v 1.5 2012/07/13 12:55:07 sthen Exp $

SHARED_ONLY =		Yes

COMMENT =		video editor and a VJ tool

V =			1.0.10
DISTNAME =		LiVES-${V}
PKGNAME =		${DISTNAME:L}
REVISION =		1

SHARED_LIBS +=		weed		0.0 # 0.2
SHARED_LIBS +=		weed_slice	0.0 # 0.2

CATEGORIES =		multimedia

HOMEPAGE =		http://lives.sourceforge.net
MASTER_SITES =		http://www.xs4all.nl/%7Esalsaman/lives/current/

# GPL v3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL SDL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c
WANTLIB += cairo drm dv expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs sndio
WANTLIB += stdc++ theora usbhid xcb xcb-render xcb-shm z

MODULES =		devel/gettext
RUN_DEPENDS =		graphics/ImageMagick \
			x11/mplayer \
			audio/sox \
			sysutils/cdrtools \
			audio/xmms \
			devel/desktop-file-utils
LIB_DEPENDS =		multimedia/libtheora \
			devel/sdl \
			multimedia/libdv \
			x11/gtk+2

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-jack \
			--disable-static

WRKDIST =		${WRKDIR}/${DISTNAME:L}

pre-install:
	@cd ${WRKDIST}/po && ${MAKE_PROGRAM} update-po

post-install:
	mv ${WRKINST}/${TRUEPREFIX}/share/doc/lives-${V} \
	    ${WRKINST}/${TRUEPREFIX}/share/doc/lives/
	find ${WRKINST}/${TRUEPREFIX}/lib/lives/plugins -name '*.la' | xargs rm

.include <bsd.port.mk>
