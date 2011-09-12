# $OpenBSD: Makefile,v 1.78 2011/09/12 20:00:43 jasper Exp $

COMMENT=		integrated music management application for GNOME

GNOME_PROJECT=		rhythmbox
GNOME_VERSION=		2.90.1.1

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
WANTLIB += assuan atk-1.0 bz2 c cairo cairo-gobject dbus-1 dbus-glib-1
WANTLIB += drm expat ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmime-2.6 gmodule-2.0
WANTLIB += gnome-keyring gobject-2.0 gpg-error gpgme-pthread gpod
WANTLIB += gstbase-0.10 gstcontroller-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstreamer-0.10 gsttag-0.10 gstvideo-0.10
WANTLIB += gthread-2.0 gtk-3 json-glib-1.0 lzma m notify pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0
WANTLIB += pixman-1 png pthread pthread-stubs soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 totem-plparser xcb xcb-render xcb-shm xml2
WANTLIB += z

MODULES=		devel/gettext \
			x11/gnome \
			lang/python \
			devel/dconf

BUILD_DEPENDS=		devel/gobject-introspection \
			audio/libmusicbrainz

LIB_DEPENDS=		devel/libpeas \
			audio/libgpod \
			devel/json-glib \
			devel/libnotify>=0.7.2 \
			x11/gnome/totem-pl-parser

RUN_DEPENDS=		multimedia/gstreamer-0.10/py-gstreamer \
			x11/dbus-python \
			www/py-mako \
			audio/libmusicbrainz

# needed for sndio(7) support
RUN_DEPENDS+=		multimedia/gstreamer-0.10/plugins-good

DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-database=tree \
			--with-gnome-keyring \
			--with-ipod \
			--with-mdns=avahi \
			--with-x \
			--enable-python \
			--without-brasero \
			--without-hal \
			--without-gudev \
			--without-webkit \
			--disable-daap \
			--disable-fm-radio \
			--disable-lirc

# Don't compile the vala (useless) sample plugin.
CONFIGURE_ARGS +=	--disable-vala

# XXX requires libmtp >= 0.3
CONFIGURE_ARGS +=	--without-mtp

# XXX requires media-keys support (i.e. pulseaudio) in gnome-settings-daemon
CONFIGURE_ARGS +=	--disable-mmkeys

# XXX requires new clutter-{x11,gst,gtk} and libmx
CONFIGURE_ARGS +=	--disable-visualizer

# XXX plugins subpackage?
CONFIGURE_ARGS +=	--disable-browser-plugin
CONFIGURE_ENV +=	MOZILLA_PLUGINDIR=${PREFIX}/lib/mozilla-plugins

# WRKBUILD/tests
REGRESS_IS_INTERACTIVE=	x11

post-install:
# needs media-keys support in G-S-D
	find ${PREFIX} -type d -name mmkeys | xargs -r rm -rf
# needs gnome-keyring python bindings (used to be in py-gnome-desktop)
	find ${PREFIX} -type d -name magnatune | xargs -r rm -rf
# needs ZeitgeistClient
	find ${PREFIX} -type d -name rbzeitgeist | xargs -r rm -rf

### XXX remove this chunk when updating to a 'real' release ############
MASTER_SITES=		http://distfiles.bsdfrog.org/

WRKDIST=		${WRKDIR}/rhythmbox

BUILD_DEPENDS +=	x11/gnome/common \
			devel/autoconf/${AUTOCONF_VERSION} \
			devel/automake/${AUTOMAKE_VERSION} \
			textproc/gtk-doc \
			devel/libtool

AUTOCONF_VERSION=	2.65
AUTOMAKE_VERSION=	1.11
CONFIGURE_STYLE=	none

do-configure:
	@cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		./autogen.sh ${CONFIGURE_ARGS} --disable-maintainer-mode \
			--disable-silent-rules
### end XXX ############################################################

.include <bsd.port.mk>
