# $OpenBSD: Makefile,v 1.46 2009/06/11 18:38:17 ajacoutot Exp $

COMMENT=		GNOME shell and file manager

# PLIST regen is needed for at least the following ports when
# the nautilus extensions directory changes:
# (e.g. ${LOCALBASE}/lib/nautilus/extensions-2.0)
# x11/gnome/file-roller
# x11/gnome/nautilus-open-terminal
# x11/gnome/nautilus-sendto
# x11/gnome/totem

GNOME_PROJECT=		nautilus
GNOME_VERSION=		2.24.2
PKGNAME=		${DISTNAME}p9

SHARED_LIBS +=	nautilus-extension   2.0      # .2.0
CATEGORIES=		x11

HOMEPAGE=		http://www.gnome.org/projects/nautilus/

# GPLv2 - LGPLv2 - GFPLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common \
		avahi-glib bonobo-2 bonobo-activation \
		bonoboui-2 bz2 c cairo croco-0.6 crypto dbus-1 dbus-glib-1 \
		expat fontconfig freetype gailutil gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 \
		gnome-2 gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2 \
		gobject-2.0 gsf-1 gthread-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png popt \
		pthread ssl startup-notification-1 util xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		:shared-mime-info->=0.21:misc/shared-mime-info
RUN_DEPENDS=		:shared-mime-info->=0.21:misc/shared-mime-info \
			:gnome-icon-theme-*:x11/gnome/icon-theme \
			:gvfs->=1.0.3:x11/gnome/gvfs
LIB_DEPENDS=		exif::graphics/libexif \
			gnome-desktop-2::x11/gnome/desktop \
			eel-2.>=20.0::x11/gnome/eel \
			rsvg-2.>=18.0::x11/gnome/librsvg \
			trackerclient::x11/gnome/tracker

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	nautilus

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--enable-tracker \
			--disable-beagle \
			--disable-update-mimedb
# XXX build error when textproc/exempi is installed
CONFIGURE_ARGS+=	--enable-xmp=no

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${WRKBUILD}/libnautilus/.libs \
				-L${WRKBUILD}/libnautilus-adapter/.libs \
				-L${WRKBUILD}/libnautilus-private/.libs \
				-L${LOCALBASE}/lib"

# fix a locale related display bug (which can lead to a crash)
BROKEN_LOCALE=	src/file-manager/fm-directory-view.c \
		libnautilus-private/nautilus-file.c \
		src/file-manager/fm-directory-view.c \
		src/file-manager/fm-properties-window.c \
		libnautilus-private/nautilus-progress-info.c \
		libnautilus-private/nautilus-file-operations.c
pre-configure:
	for i in ${BROKEN_LOCALE}; do \
		perl -pi -e "s,%\'d,%d,g;" -e "s,%\'u,%u,g;" \
			${WRKSRC}/$${i}; done

# The regression tests require a running instance of X.
# You will also need to set the XAUTHORITY environment variable to point
# to the appropriate .Xauthority file.
REGRESS_IS_INTERACTIVE=Yes
REGRESS_FLAGS=	DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
