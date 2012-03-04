# $OpenBSD: Makefile,v 1.56 2012/03/04 18:02:58 landry Exp $

COMMENT=	Xfce4 session manager

XFCE_PROJECT=	xfce4-session
XFCE_VERSION=	4.8.2
REVISION=	3

SHARED_LIBS +=	xfsm-4.6	0.0 # .0.0

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes

CONFIGURE_ARGS=	--disable-linker-opts \
		--disable-hal \
		--disable-polkit \
		--disable-consolekit \
		--disable-upower
#CONFIGURE_ARGS+= --enable-session-screenshots
#XXX session-screenshots broken?
# http://bugzilla.xfce.org/show_bug.cgi?id=6885
LIB_DEPENDS=	x11/xfce4/libxfce4ui>=4.8.0\
		x11/xfce4/xfce4-panel>=4.8.0 \
		x11/xfce4/xfconf>=4.8.0 \
		devel/libwnck

WANTLIB += GL ICE SM X11 X11-xcb XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 drm expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs startup-notification-1 wnck-1 xcb xcb-aux
WANTLIB += xcb-render xcb-shm xfce4panel-1.0 xfce4ui-1 xfce4util
WANTLIB += xfconf-0 z

FAKE_FLAGS=	settingsdir=${PREFIX}/share/examples/xfce4-session

# XXX workaround for pkg_add bug when a symlink to a dir becomes a real dir
post-install:
	rm -Rf ${PREFIX}/share/doc/xfce4-session/html/el/images/
	ln -s ${TRUEPREFIX}/share/doc/xfce4-session/html/C/images ${PREFIX}/share/doc/xfce4-session/html/el/images

.include <bsd.port.mk>
