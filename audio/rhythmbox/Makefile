# $OpenBSD: Makefile,v 1.101 2012/06/15 08:32:14 ajacoutot Exp $

COMMENT=		integrated music management application for GNOME

GNOME_PROJECT=		rhythmbox
GNOME_VERSION=		2.97
REVISION=		0

SHARED_LIBS +=  rhythmbox-core       0.0      # .0.0

CATEGORIES=		audio

HOMEPAGE=		http://projects.gnome.org/rhythmbox/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 with exception clause
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm archive
WANTLIB += atk-1.0 bz2 c cairo cairo-gobject dbus-1 drm expat
WANTLIB += ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmime-2.6 gmodule-2.0
WANTLIB += gnome-keyring gobject-2.0 gpg-error gpod grilo-0.1
WANTLIB += gstbase-0.10 gstcontroller-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstreamer-0.10 gsttag-0.10 gthread-2.0
WANTLIB += gtk-3 json-glib-1.0 lzma m notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0 pixman-1 plist
WANTLIB += png pthread pthread-stubs soup-2.4 soup-gnome-2.4 sqlite3
WANTLIB += stdc++ tdb totem-plparser xcb xcb-render xcb-shm xml2
WANTLIB += z crypto curl idn lua quvi ssl

MODULES=		devel/gettext \
			x11/gnome \
			lang/python \
			devel/dconf

BUILD_DEPENDS=		audio/libmusicbrainz \
			devel/gobject-introspection \
			devel/py-gobject3

LIB_DEPENDS=		audio/libgpod \
			databases/tdb \
			devel/json-glib \
			devel/libnotify>=0.7.2 \
			devel/libpeas \
			x11/gnome/grilo \
			x11/gnome/totem-pl-parser

RUN_DEPENDS=		multimedia/gstreamer-0.10/py-gstreamer \
			x11/dbus-python \
			www/py-mako \
			audio/libmusicbrainz \
			devel/py-gobject3

# needed for sndio(7) support
RUN_DEPENDS+=		multimedia/gstreamer-0.10/plugins-good

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS= 	yelp

MODGNOME_LDFLAGS=	-L${X11BASE}/lib
MODGNOME_CPPFLAGS=	-I${X11BASE}/include

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		--with-database=tree \
			--with-gnome-keyring \
			--with-ipod \
			--with-mdns=avahi \
			--with-x \
			--enable-python \
			--without-brasero \
			--without-hal \
			--without-gudev \
			--without-webkit \
			--disable-fm-radio \
			--disable-lirc

# Don't compile the vala (useless) sample plugin.
CONFIGURE_ARGS +=	--disable-vala

# XXX requires libdmapsharing
CONFIGURE_ARGS +=	--disable-daap

# XXX requires hal|udev
CONFIGURE_ARGS +=	--without-mtp

# XXX requires new clutter-{x11,gst,gtk} and libmx
CONFIGURE_ARGS +=	--disable-visualizer

# XXX plugins subpackage?
CONFIGURE_ARGS +=	--disable-browser-plugin
CONFIGURE_ENV +=	MOZILLA_PLUGINDIR=${PREFIX}/lib/mozilla-plugins

# WRKBUILD/tests
REGRESS_IS_INTERACTIVE=	x11

post-install:
# needs ZeitgeistClient
	find ${PREFIX} -type d -name rbzeitgeist | xargs -r rm -rf

.include <bsd.port.mk>
