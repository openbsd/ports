# $OpenBSD: Makefile,v 1.7 2011/09/21 10:10:46 landry Exp $

COMMENT=	D-Bus thumbnailing service

XFCE_VERSION=	0.1.22
XFCE_GOODIE=	tumbler

SHARED_LIBS+=	tumbler-1 0.0

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

CONFIGURE_ARGS =	--disable-linker-opts \
			--disable-ffmpeg-thumbnailer
# correctly find bindtextdomain
CONFIGURE_ENV +=	LIBS='-liconv'

LIB_DEPENDS +=	x11/dbus-glib \
		print/poppler \
		graphics/png \
		graphics/jpeg \
		multimedia/gstreamer-0.10/core \
		graphics/gdk-pixbuf2 \
		x11/gtk+2

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm c cairo dbus-1 dbus-glib-1
WANTLIB += drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gstreamer-0.10
WANTLIB += gthread-2.0 jpeg lcms m openjpeg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png poppler poppler-glib
WANTLIB += pthread pthread-stubs stdc++ xcb xcb-render xcb-shm
WANTLIB += xml2 z

.include <bsd.port.mk>
