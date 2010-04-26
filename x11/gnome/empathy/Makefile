# $OpenBSD: Makefile,v 1.36 2010/04/26 15:31:55 jasper Exp $

# XXX
# (empathy:10245): Gtk-WARNING **: could not load image: Icon 'im-xmpp' not present in theme
# make a symlink from im-jabber to im-xmpp if needed?

COMMENT= 		telepathy based messenger for GNOME

GNOME_PROJECT=		empathy
GNOME_VERSION=		2.30.1

CATEGORIES=		net

HOMEPAGE=		http://live.gnome.org/Empathy

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gconf2 \
			devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm asn1
WANTLIB += atk-1.0 c cairo clutter-glx-1.0 com_err crypto dbus-1
WANTLIB += dbus-glib-1 drm eggdbus-1 expat fontconfig freetype
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gnome-keyring gnutls gobject-2.0
WANTLIB += gpg-error gssapi gstbase-0.10 gstfarsight-0.10 gstinterfaces-0.10
WANTLIB += gstreamer-0.10 gthread-2.0 gtk-x11-2.0 krb5 m nspr4
WANTLIB += nss3 ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 plc4 plds4 png proxy pthread pthread-stubs
WANTLIB += smime3 soup-2.4 soup-gnome-2.4 sqlite3 ssl3 stdc++
WANTLIB += tasn1 telepathy-glib vorbis vorbisfile xcb xcb-render
WANTLIB += xcb-render-util xml2 z

BUILD_DEPENDS=		::devel/iso-codes \
			::x11/py-gtk2 \
			::x11/gnome/nautilus-sendto
LIB_DEPENDS=		canberra,canberra-gtk::audio/libcanberra \
			camel-1.2,ebook-1.2,edataserver-1.2::databases/evolution-data-server \
			json-glib-1.0::devel/json-glib \
			notify::devel/libnotify \
			ltdl::devel/libtool,-ltdl \
			unique-1.0::devel/libunique \
			geoclue::geo/geoclue \
			champlain-0.4,champlain-gtk-0.4::geo/libchamplain/core \
			clutter-gtk-0.10::graphics/clutter/clutter-gtk \
			telepathy-farsight::net/telepathy/telepathy-farsight \
			mcclient::net/telepathy/telepathy-mission-control \
			enchant::textproc/enchant \
			telepathy-logger::net/telepathy/telepathy-logger

RUN_DEPENDS=		::net/telepathy/telepathy-gabble \
			::net/telepathy/telepathy-haze \
			::net/telepathy/telepathy-idle \
			::x11/hicolor-icon-theme

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	empathy

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-scrollkeeper \
			--enable-spell=Yes \
			--enable-location=Yes \
			--enable-map=Yes\
			--enable-webkit=no \
			--enable-nautilus-sendto \
			--enable-control-center-embedding=no \
			--enable-tpl
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS+=		pkgdatadir=${PREFIX}/share/

pre-configure:
	@ln -s ${LOCALBASE}/bin/python${MODPY_VERSION}-config \
		${WRKDIR}/bin/python-config

.include <bsd.port.mk>
