# $OpenBSD: Makefile,v 1.3 2015/04/08 23:04:53 sthen Exp $

COMMENT =	Pulseaudio volume mixer

DISTNAME =	pavucontrol-2.0
HOMEPAGE =	http://freedesktop.org/software/pulseaudio/pavucontrol/
MASTER_SITES =	${HOMEPAGE}
CATEGORIES =	audio
REVISION =	0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/gettext \
		textproc/intltool
USE_GMAKE =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS =	gtk3
FLAVOR ?=

RUN_DEPENDS +=	devel/desktop-file-utils
LIB_DEPENDS +=	audio/pulseaudio

.if ${FLAVOR:Mgtk3}
LIB_DEPENDS +=	x11/gtk3mm \
		audio/libcanberra,-gtk3
# the two patches are only needed for gtk2mm compat
PATCH_LIST =	gtk3-patch-*

WANTLIB += cairo-gobject canberra-gtk3 gdk-3 gdkmm-3.0 gtk-3 gtkmm-3.0

.else
LIB_DEPENDS +=	x11/gtk2mm \
		audio/libcanberra,-gtk
CONFIGURE_ARGS +=	--disable-gtk3

WANTLIB += Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender canberra-gtk gdk-x11-2.0
WANTLIB += gdkmm-2.4 gtk-x11-2.0 gtkmm-2.4

.endif

WANTLIB += X11 atk-1.0 atkmm-1.6 c cairo cairomm-1.0
WANTLIB += canberra fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4
WANTLIB += pthread pulse pulse-mainloop-glib sigc-2.0 stdc++ z

.include <bsd.port.mk>
