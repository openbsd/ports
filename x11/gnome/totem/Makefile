# $OpenBSD: Makefile,v 1.74 2011/10/07 10:33:24 ajacoutot Exp $

COMMENT-main=		official media player for GNOME
COMMENT-nautilus=	totem properties plugin for nautilus

GNOME_PROJECT=		totem
GNOME_VERSION=		3.0.1

PKGNAME-main=		${DISTNAME}
PKGNAME-nautilus=	nautilus-${DISTNAME}

REVISION-main=		9
REVISION-nautilus=	3

SHARED_LIBS +=  totem                     0.0 # 0.0

CATEGORIES=	multimedia

HOMEPAGE=	http://projects.gnome.org/totem/

# GPLv2 with exception clause - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

MULTI_PACKAGES=	-main -nautilus

MODULES=	devel/dconf \
		devel/gettext \
		lang/python \
		x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm archive atk-1.0
WANTLIB += bz2 cairo cairo-gobject dbus-1 drm expat fontconfig
WANTLIB += freetype gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmime-2.6 gmodule-2.0 gnome-keyring gobject-2.0 gpg-error
WANTLIB += gstaudio-0.10 gstbase-0.10 gstinterfaces-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gsttag-0.10 gstvideo-0.10 gthread-2.0
WANTLIB += gtk-3 lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 totem-plparser xcb xcb-render xcb-shm xml2
WANTLIB += z assuan gpgme-pthread

WANTLIB-main += ${WANTLIB} ICE SM Xtst c dbus-glib-1 ffi girepository-1.0
WANTLIB-main += peas-1.0 peas-gtk-1.0 pthread

WANTLIB-nautilus += ${WANTLIB} nautilus-extension

BUILD_DEPENDS+= 	devel/iso-codes \
			lang/vala \
			multimedia/gstreamer-0.10/plugins-good>=0.10.30

RUN_DEPENDS-main+=	devel/iso-codes \
			devel/py-xdg \
			x11/dbus-python \
			x11/gnome/settings-daemon \
			${MODGNOME_RUN_DEPENDS_yelp}

LIB_DEPENDS-main+=	${MODGETTEXT_LIB_DEPENDS} \
			multimedia/gstreamer-0.10/plugins-base>=0.10.30 \
			x11/gnome/totem-pl-parser>=2.32.4 \
			devel/gobject-introspection \
			devel/libpeas

RUN_DEPENDS-nautilus=	x11/gnome/totem,-main
LIB_DEPENDS-nautilus=	x11/gnome/nautilus \
			x11/gnome/totem-pl-parser

# while the following are not "required" for totem to run, there's no
# point in using a media player that can't play most modern media files
RUN_DEPENDS-main+=multimedia/gstreamer-0.10/plugins-good \
		multimedia/gstreamer-0.10/plugins-ffmpeg>=0.10.5

# gst-inspect-0.10 needs to access ${HOME}
PORTHOME=	${WRKDIR}

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_TOOLS= goi yelp
USE_GROFF=	Yes

# im-status gromit iplayer jamendo lirc media-player-keys ontop opensubtitles
# properties publish pythonconsole save-file sample-python sample-vala
# screensaver screenshot sidebar-test skipto thumbnail tracker youtube
# zeitgeist-dp
TOTEM_PLUGINS=	"media-player-keys ontop properties \
		screensaver skipto thumbnail \
		opensubtitles jamendo screenshot dbus-service"

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib
CONFIGURE_ENV= 	CFLAGS="${CFLAGS} -I${LOCALBASE}/include " \
		GST_REGISTRY=${WRKDIR}/registry.${MACHINE_ARCH}.bin
CONFIGURE_ARGS=	--with-plugins=${TOTEM_PLUGINS} \
		--with-dbus \
		--enable-nautilus \
		--enable-python \
		--enable-vala \
		--disable-easy-codec-installation \
		--disable-browser-plugins \
		--disable-gmp-plugin \
		--disable-narrowspace-plugin \
		--disable-mully-plugin \
		--disable-cone-plugin

.include <bsd.port.mk>
