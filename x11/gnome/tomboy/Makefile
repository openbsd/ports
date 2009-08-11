# $OpenBSD: Makefile,v 1.21 2009/08/11 08:39:39 ajacoutot Exp $

COMMENT=	desktop note-taking application written in C\#

GNOME_PROJECT=	tomboy
GNOME_VERSION=	0.12.2
PKGNAME=	${DISTNAME}p10

CATEGORIES=	x11

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome \
		lang/mono \
		devel/gettext \
		devel/gconf2

USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	tomboy
MODGCONF2_LIBDEP=	No

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		cairo expat fontconfig freetype gailutil gdk-x11-2.0 \
		gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 gnomecanvas-2 \
		gnomeprint-2-2 gnomeprintui-2-2 gobject-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png xml2 z gio-2.0 pthread-stubs xcb

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::lang/mono \
		::devel/mono-addins \
		::sysutils/ndesk-dbus-glib \
		::x11/gnome/mono-gnome \
		:shared-mime-info->=0.21:misc/shared-mime-info \
		:gnome-icon-theme->=2.18.0:x11/gnome/icon-theme

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-sketching=no
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

DLLMAP_FILES=	Tomboy/Tomboy.exe.config.in

.include <bsd.port.mk>
