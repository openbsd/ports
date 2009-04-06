# $OpenBSD: Makefile,v 1.20 2009/04/06 10:05:21 ajacoutot Exp $

COMMENT=	simple media player for GNOME

GNOME_PROJECT=	totem
GNOME_VERSION=	2.22.2
PKGNAME=	${DISTNAME}p17

CATEGORIES=	multimedia

HOMEPAGE=	http://www.gnome.org/projects/totem/

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender Xtst Xxf86vm art_lgpl_2 asn1 atk-1.0 \
		bonobo-2 bonobo-activation bonoboui-2 c cairo \
		camel-1.2 com_err crypto dbus-1 dbus-glib-1 sqlite3 \
		edataserver-1.2 expat fontconfig freetype gailutil \
		gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz \
		gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomevfs-2 gnutls gobject-2.0 gpg-error gssapi gthread-2.0 gtk-x11-2.0 \
		krb5 m nspr4 nss3 pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1  plc4 plds4 png popt pthread \
		smime3 softokn3 ssl ssl3 tasn1 util xml2 z gio-2.0 soup-2.4

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	::x11/py-gtk2 \
		::devel/iso-codes
RUN_DEPENDS=	::x11/gnome/settings-daemon \
		::x11/py-gtk2 \
		:iso-codes-*:devel/iso-codes \
		::x11/gromit \
		::devel/py-gdata \
		::net/galago-daemon
LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		totem-plparser::x11/gnome/totem-pl-parser \
		galago::net/libgalago \
		gnomeui-2::x11/gnome/libgnomeui \
		nautilus-extension::x11/gnome/nautilus

# gst-inspect-0.10 needs to access ${HOME}
PORTHOME=	${WRKDIR}

USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES=Yes

TOTEM_PLUGINS=	"galago gromit media-player-keys ontop properties \
		screensaver skipto thumbnail youtube" # Browser \
		bemused lirc mythtv sample-python sample-val \
		sidebar-test publish tracker

CONFIGURE_ENV= 	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		PYTHON=${MODPY_BIN} \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include "
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
	        --with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/totem \
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
		--disable-schemas-install \
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
# while the following are not "required" for totem to run, there's no
# point in using a media player that can't play most modern media files
BUILD_DEPENDS+=	:gstreamer-confelements-*:multimedia/gstreamer-0.10/plugins-good,-gconf
RUN_DEPENDS+=	:gstreamer-vorbis-*:multimedia/gstreamer-0.10/plugins-base,-vorbis \
		:gstreamer-ogg-*:multimedia/gstreamer-0.10/plugins-base,-ogg \
		:gstreamer-xvid-*:multimedia/gstreamer-0.10/plugins-bad,-xvid \
		:gstreamer-jpeg-*:multimedia/gstreamer-0.10/plugins-good,-jpeg \
		:gstreamer-confelements-*:multimedia/gstreamer-0.10/plugins-good,-gconf \
		:gstreamer-a52-*:multimedia/gstreamer-0.10/plugins-ugly,-a52 \
		:gstreamer-mpeg2-*:multimedia/gstreamer-0.10/plugins-ugly,-mpeg2 \
		:gstreamer-dvdread-*:multimedia/gstreamer-0.10/plugins-ugly,-dvdread \
		:gstreamer-mad-*:multimedia/gstreamer-0.10/plugins-ugly,-mad \
		:gstreamer-ffmpeg->=0.10.5:multimedia/gstreamer-0.10/plugins-ffmpeg
CONFIGURE_ARGS+=--enable-gstreamer \
		--disable-xine
.endif

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

# stop systrace spam by avoiding xsltproc to access net
pre-configure:
	perl -pi -e 's,xsltproc,xsltproc --nonet,g' \
		${WRKSRC}/help/Makefile.in

.include <bsd.port.mk>
