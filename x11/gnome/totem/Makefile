# $OpenBSD: Makefile,v 1.34 2009/11/29 09:24:25 ajacoutot Exp $

COMMENT=	simple media player for GNOME

GNOME_PROJECT=	totem
GNOME_VERSION=	2.28.4

CATEGORIES=	multimedia

HOMEPAGE=	http://projects.gnome.org/totem/

# GPLv2 with exception clause - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xtst Xxf86vm
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB += freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmime-2.4 gmodule-2.0 gnome-keyring
WANTLIB += gnutls gobject-2.0 gpg-error gstbase-0.10 gstreamer-0.10
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png proxy pthread pthread-stubs
WANTLIB += soup-2.4 soup-gnome-2.4 sqlite3 tasn1 trackerclient
WANTLIB += unique-1.0 util xcb xml2 z

MODULES=	devel/gettext \
		lang/python \
		x11/gnome \
		devel/gconf2

# XXX make port-lib-depends-check happy (a52 and xklavier libs errors)
# Missing library for a52
# Can't resolve libspec a52
# Can't call method "name" on an undefined value at /usr/libdata/perl5/OpenBSD/PackingList.pm line 371.
BUILD_DEPENDS+=	::graphics/ffmpeg \
		::x11/gnome/settings-daemon

BUILD_DEPENDS+=	::x11/py-gtk2 \
		::devel/py-gdata \
		::multimedia/gstreamer-0.10/plugins-good,-soup \
		::devel/iso-codes
RUN_DEPENDS+=	::x11/gnome/settings-daemon \
		::x11/py-gtk2 \
		:iso-codes-*:devel/iso-codes \
		::x11/gromit \
		::devel/py-gdata \
		::net/galago-daemon
LIB_DEPENDS+=	${MODPY_LIB_DEPENDS} \
		gstaudio-0.10,gstinterfaces-0.10,gstpbutils-0.10,gstvideo-0.10,gsttag-0.10:gstreamer-plugins-base->=0.10.25:multimedia/gstreamer-0.10/plugins-base \
		totem-plparser:totem-pl-parser->=2.28.1:x11/gnome/totem-pl-parser \
		galago::net/libgalago \
		nautilus-extension::x11/gnome/nautilus \
		gdata::devel/libgdata

# while the following are not "required" for totem to run, there's no
# point in using a media player that can't play most modern media files
RUN_DEPENDS+=	::multimedia/gstreamer-0.10/plugins-base \
		::multimedia/gstreamer-0.10/plugins-good,-soup \
		::multimedia/gstreamer-0.10/plugins-ugly \
		:gstreamer-ffmpeg->=0.10.5:multimedia/gstreamer-0.10/plugins-ffmpeg

# gst-inspect-0.10 needs to access ${HOME}
PORTHOME=	${WRKDIR}

USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES=Yes
MODGCONF2_SCHEMAS_DIR= totem

# Browser bemused lirc mythtv sample-python sample-val sidebar-test
# publish iplayer pythonconsole coherence_upnp
TOTEM_PLUGINS=	"galago gromit media-player-keys ontop properties \
		screensaver skipto thumbnail youtube tracker \
		opensubtitles jamendo screenshot dbus-service"

CONFIGURE_ENV= 	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include "
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-plugins=${TOTEM_PLUGINS} \
		--with-dbus \
		--enable-nautilus \
		--enable-python \
		--disable-easy-codec-installation \
		--disable-browser-plugins \
		--disable-gmp-plugin \
		--disable-complex-plugin \
		--disable-narrowspace-plugin \
		--disable-mully-plugin \
		--disable-cone-plugin \
		--disable-scrollkeeper \
		--disable-vala

# stop systrace spam by avoiding xsltproc to access net
pre-configure:
	perl -pi -e 's,xsltproc,xsltproc --nonet,g' \
		${WRKSRC}/help/Makefile.in

.include <bsd.port.mk>
