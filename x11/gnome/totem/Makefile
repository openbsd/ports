# $OpenBSD: Makefile,v 1.83 2012/07/07 20:44:26 ajacoutot Exp $

COMMENT-main=		official media player for GNOME
COMMENT-nautilus=	totem properties plugin for nautilus

GNOME_PROJECT=		totem
GNOME_VERSION=		3.4.3

PKGNAME-main=		${DISTNAME}
PKGNAME-nautilus=	nautilus-${DISTNAME}

REVISION-main=		0

SHARED_LIBS +=  totem                     0.0 # 0.0

CATEGORIES=	multimedia

HOMEPAGE=	http://projects.gnome.org/totem/

# GPLv2 with exception clause - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-main -nautilus

MODULES=	devel/dconf \
		devel/gettext \
		lang/python \
		x11/gnome

WANTLIB += GL X11 X11-xcb Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm archive
WANTLIB += atk-1.0 bz2 cairo cairo-gobject clutter-1.0 clutter-gst-1.0
WANTLIB += clutter-gtk-1.0 cogl cogl-pango crypto curl dbus-1
WANTLIB += dbus-glib-1 drm expat ffi fontconfig freetype gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmime-2.6 gmodule-2.0
WANTLIB += gnome-keyring gobject-2.0 gpg-error gstaudio-0.10 gstbase-0.10
WANTLIB += gstbasevideo-0.10 gstinterfaces-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gsttag-0.10 gstvideo-0.10 gthread-2.0
WANTLIB += gtk-3 idn json-glib-1.0 lua lzma m mx-1.0 orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += quvi soup-2.4 soup-gnome-2.4 sqlite3 ssl startup-notification-1
WANTLIB += stdc++ totem-plparser xcb xcb-aux xcb-render xcb-shm
WANTLIB += xml2 z

WANTLIB-main += ${WANTLIB}
WANTLIB-main += ICE SM Xtst avahi-client avahi-common avahi-glib c
WANTLIB-main += e2fs-uuid epc-1.0 epc-ui-1.0 girepository-1.0 gmp gnutls
WANTLIB-main += grilo-0.1 hogweed nettle p11-kit peas-1.0 peas-gtk-1.0
WANTLIB-main += pthread tasn1

WANTLIB-nautilus += ${WANTLIB}
WANTLIB-nautilus += nautilus-extension

BUILD_DEPENDS=	 	devel/iso-codes \
			multimedia/gstreamer-0.10/plugins-good>=0.10.30 \
			devel/py-gobject \
			devel/pylint

RUN_DEPENDS-main=	devel/iso-codes \
			devel/py-xdg \
			x11/dbus-python \
			x11/gnome/grilo-plugins \
			x11/gnome/settings-daemon \
			devel/py-gobject \
			www/py-httplib2 \
			www/py-beautifulsoup \
			${RUN_DEPENDS}

LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			multimedia/gstreamer-0.10/plugins-base>=0.10.30 \
			x11/gnome/totem-pl-parser>=2.32.4 \
			devel/gobject-introspection \
			devel/libpeas \
			net/libepc \
			graphics/clutter/clutter-gst>=1.6.0 \
			graphics/clutter/clutter-gtk \
			graphics/clutter/mx \
			x11/gnome/grilo

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
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS= goi vala yelp
USE_GROFF=	Yes

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib
CONFIGURE_ENV= 		CFLAGS="${CFLAGS} -I${LOCALBASE}/include"
# Prevent gst-inspect from writing to ${HOME}/.gstreamer-0.10/ at configure stage
CONFIGURE_ENV +=	GST_REGISTRY=${WRKDIR}/registry.${MACHINE_ARCH}.bin

CONFIGURE_ARGS= --enable-nautilus \
		--enable-python \
		--disable-easy-codec-installation \
		--disable-browser-plugins \
		--disable-gmp-plugin \
		--disable-narrowspace-plugin \
		--disable-mully-plugin \
		--disable-cone-plugin

.include <bsd.port.mk>
