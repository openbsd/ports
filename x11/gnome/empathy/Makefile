# $OpenBSD: Makefile,v 1.48 2010/10/01 14:53:31 jasper Exp $

COMMENT= 		telepathy based messenger for GNOME

GNOME_PROJECT=		empathy
GNOME_VERSION=		2.30.3
REVISION=		5

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
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 unique-1.0
WANTLIB += glitz gmodule-2.0 gnome-keyring gnutls gobject-2.0
WANTLIB += gpg-error gssapi gstbase-0.10 gstfarsight-0.10 gstinterfaces-0.10
WANTLIB += gstreamer-0.10 gthread-2.0 gtk-x11-2.0 krb5 m nspr4 geoclue
WANTLIB += nss3 ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre enchant
WANTLIB += pixman-1 plc4 plds4 png proxy pthread pthread-stubs
WANTLIB += smime3 soup-2.4 soup-gnome-2.4 sqlite3 ssl3 stdc++ notify
WANTLIB += tasn1 telepathy-glib vorbis vorbisfile xcb xcb-render ltdl
WANTLIB += xcb-render-util xml2 z canberra canberra-gtk camel-1.2
WANTLIB += ebook-1.2 edataserver-1.2 json-glib-1.0 champlain-0.8
WANTLIB += champlain-gtk-0.8 clutter-gtk-0.10 telepathy-farsight
#WANTLIB += telepathy-logger

BUILD_DEPENDS=		::devel/iso-codes \
			::x11/py-gtk2 \
			::x11/gnome/nautilus-sendto
LIB_DEPENDS=		::audio/libcanberra \
			::databases/evolution-data-server \
			::devel/json-glib \
			::devel/libnotify \
			::devel/libtool,-ltdl \
			::devel/libunique \
			::geo/geoclue \
			::geo/libchamplain/core \
			::graphics/clutter/clutter-gtk \
			::net/telepathy/telepathy-farsight \
			::net/telepathy/telepathy-mission-control \
			::textproc/enchant
#			::net/telepathy/telepathy-logger

RUN_DEPENDS=		::devel/iso-codes \
			::net/telepathy/telepathy-butterfly \
			::net/telepathy/telepathy-gabble \
			::net/telepathy/telepathy-idle \
			::net/telepathy/telepathy-salut \
			:gnome-icon-theme->=2.30.3:x11/gnome/icon-theme

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	empathy

AUTOCONF_VERSION=	2.62
CONFIGURE_STYLE=	autoconf gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-scrollkeeper \
			--enable-spell=Yes \
			--enable-location=Yes \
			--enable-map=Yes\
			--enable-webkit=no \
			--enable-nautilus-sendto \
			--enable-control-center-embedding=no
#			--enable-tpl
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS+=		pkgdatadir=${PREFIX}/share/

pre-configure:
	@ln -s ${LOCALBASE}/bin/python${MODPY_VERSION}-config \
		${WRKDIR}/bin/python-config

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/empathy
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/empathy/README.OpenBSD
	chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/doc/empathy/README.OpenBSD

.include <bsd.port.mk>
