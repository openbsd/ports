# $OpenBSD: Makefile,v 1.99 2011/10/18 06:37:02 ajacoutot Exp $

COMMENT=		GNOME file manager

# PLIST regen is needed for at least the following ports when
# the nautilus extensions directory changes:
# (i.e. ${LOCALBASE}/lib/nautilus/extensions-3.0)
# graphics/evince
# sysutils/deja-dup
# x11/gnome/file-roller
# x11/gnome/main-menu
# x11/gnome/nautilus-open-terminal
# x11/gnome/seahorse-plugins
# x11/gnome/totem
# x11/gnome/tracker

GNOME_PROJECT=		nautilus
GNOME_VERSION=		3.2.1

SHARED_LIBS +=  nautilus-extension   3.0      # 5.0

CATEGORIES=		x11

HOMEPAGE=		http://www.gnome.org/projects/nautilus/

# GPLv2 - LGPLv2 - GFPLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject drm exempi exif expat
WANTLIB += fontconfig freetype gailutil-3 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 m notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm
WANTLIB += xml2 z ffi

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

BUILD_DEPENDS=		misc/shared-mime-info>=0.21 \
			devel/gobject-introspection \
			devel/gsettings-desktop-schemas

RUN_DEPENDS=		misc/shared-mime-info>=0.21 \
			x11/gnome/icon-theme \
			x11/gnome/gvfs>=1.0.3 \
			devel/gsettings-desktop-schemas

LIB_DEPENDS=		x11/gnome/desktop \
			devel/libnotify \
			graphics/libexif>=0.6.0 \
			textproc/exempi

MODGNOME_TOOLS= 	goi
MODGNOME_DESKTOP_FILE=		Yes

USE_GROFF=		Yes

CONFIGURE_ARGS+= 	--disable-update-mimedb \
			--disable-packagekit \
			--enable-libexif \
			--enable-xmp

# it would introduce a cyclic dependency with x11/gnome/tracker; also it
# is better to keep the regular search for nautilus so that we can get
# results from paths not indexed by tracker
CONFIGURE_ARGS +=	--disable-tracker

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/nautilus

# needs 'org.gnome.nautilus.preferences'
REGRESS_DEPENDS=	${BASE_PKGPATH}
REGRESS_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
