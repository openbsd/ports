# $OpenBSD: Makefile,v 1.1.1.1 2011/01/18 20:01:46 landry Exp $

COMMENT =	Thunar old vfs compat

XFCE_PROJECT =	thunar-vfs
XFCE_VERSION =	1.2.0
SHARED_LIBS +=  thunar-vfs-1              5.2 # 5.1

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	x11/xfce4

# --as-needed fucks linking with pthread
CONFIGURE_ARGS +=	--disable-linker-opts --disable-gnome-thumbnailers
# correctly find bindtextdomain
CONFIGURE_ENV +=	LIBS='-liconv'

LIB_DEPENDS +=	x11/xfce4/exo>=0.6.0 \
		x11/gtk+2 \
		devel/startup-notification

WANTLIB +=	exo-1 startup-notification-1 gtk-x11-2.0 gdk-x11-2.0
WANTLIB +=	cairo gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB +=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB +=	Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c execinfo
WANTLIB +=	expat fontconfig freetype gamin-1 jpeg m pango-1.0
WANTLIB +=	pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB +=	pthread-stubs xcb xcb-atom xcb-aux xcb-event xcb-render
WANTLIB +=	GL Xxf86vm drm xcb-shm xfce4util z

.include <bsd.port.mk>
