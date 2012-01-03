# $OpenBSD: Makefile,v 1.4 2012/01/03 22:04:06 ajacoutot Exp $

COMMENT =	Thunar old vfs compat

XFCE_PROJECT =	thunar-vfs
XFCE_VERSION =	1.2.0
SHARED_LIBS +=  thunar-vfs-1              5.2 # 5.1
REVISION=	2

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
		devel/startup-notification \
		sysutils/gamin

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo drm exo-1 expat ffi fontconfig freetype
WANTLIB += gamin-1 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 jpeg
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs startup-notification-1 xcb
WANTLIB += xcb-aux xcb-render xcb-shm xfce4util z

.include <bsd.port.mk>
