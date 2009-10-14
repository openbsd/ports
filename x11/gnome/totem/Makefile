# $OpenBSD: Makefile,v 1.33 2009/10/14 12:51:45 ajacoutot Exp $

COMMENT=	simple media player for GNOME

GNOME_PROJECT=	totem
GNOME_VERSION=	2.22.2
PKGNAME=	${DISTNAME}p27

CATEGORIES=	multimedia

HOMEPAGE=	http://projects.gnome.org/totem/

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xtst Xxf86vm art_lgpl_2 asn1 atk-1.0 avahi-client
WANTLIB += avahi-common avahi-glib bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 c cairo camel-1.2 com_err crypto dbus-1
WANTLIB += dbus-glib-1 edataserver-1.2 expat ffi fontconfig freetype
WANTLIB += gailutil gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2
WANTLIB += gnomevfs-2 gnutls gobject-2.0 gpg-error gssapi gthread-2.0
WANTLIB += gtk-x11-2.0 krb5 m nspr4 nss3 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png popt pthread
WANTLIB += pthread-stubs smime3 softokn3 soup-2.4 sqlite3 ssl
WANTLIB += ssl3 tasn1 util xcb xml2 z

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
		::devel/iso-codes
RUN_DEPENDS+=	::x11/gnome/settings-daemon \
		::x11/py-gtk2 \
		:iso-codes-*:devel/iso-codes \
		::x11/gromit \
		::devel/py-gdata \
		::net/galago-daemon
LIB_DEPENDS+=	${MODPY_LIB_DEPENDS} \
		totem-plparser::x11/gnome/totem-pl-parser \
		galago::net/libgalago \
		gnomeui-2::x11/gnome/libgnomeui \
		nautilus-extension::x11/gnome/nautilus

# gst-inspect-0.10 needs to access ${HOME}
PORTHOME=	${WRKDIR}

USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES=Yes
MODGCONF2_SCHEMAS_DIR= totem

TOTEM_PLUGINS=	"galago gromit media-player-keys ontop properties \
		screensaver skipto thumbnail youtube" # Browser \
		bemused lirc mythtv sample-python sample-val \
		sidebar-test publish tracker

CONFIGURE_ENV= 	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include "
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-plugins=${TOTEM_PLUGINS} \
		--with-dbus \
		--without-hal \
		--enable-nautilus \
		--enable-python \
		--disable-easy-codec-installation \
		--disable-browser-plugins \
		--disable-basic-plugin \
		--disable-gmp-plugin \
		--disable-complex-plugin \
		--disable-narrowspace-plugin \
		--disable-mully-plugin \
		--disable-scrollkeeper \
		--disable-nvtv \
		--disable-lirc \
		--disable-vala

FLAVORS=	xine
FLAVOR?=

.if ${FLAVOR:L:Mxine}
LIB_DEPENDS+=	xine.>=20::multimedia/xine-lib
CONFIGURE_ARGS+=--enable-xine \
		--disable-gstreamer
.else
WANTLIB+=	gstbase-0.10 gstreamer-0.10
LIB_DEPENDS+=	gstaudio-0.10,gstinterfaces-0.10,gstpbutils-0.10,gstvideo-0.10::multimedia/gstreamer-0.10/plugins-base
BUILD_DEPENDS+=	::multimedia/gstreamer-0.10/plugins-good
# while the following are not "required" for totem to run, there's no
# point in using a media player that can't play most modern media files
RUN_DEPENDS+=	::multimedia/gstreamer-0.10/plugins-base \
		::multimedia/gstreamer-0.10/plugins-good \
		::multimedia/gstreamer-0.10/plugins-ugly \
		:gstreamer-ffmpeg->=0.10.5:multimedia/gstreamer-0.10/plugins-ffmpeg
CONFIGURE_ARGS+=--enable-gstreamer \
		--disable-xine
.endif

# stop systrace spam by avoiding xsltproc to access net
pre-configure:
	perl -pi -e 's,xsltproc,xsltproc --nonet,g' \
		${WRKSRC}/help/Makefile.in

.include <bsd.port.mk>
