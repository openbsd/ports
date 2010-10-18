# $OpenBSD: Makefile,v 1.83 2010/10/18 13:18:14 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		GNOME control center

GNOME_PROJECT=		gnome-control-center
GNOME_VERSION=		2.32.0

REVISION=		1

SHARED_LIBS +=	gnome-window-settings 3.0      # .1.0

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xft Xi Xinerama Xrandr Xrender Xss asn1
WANTLIB += atk-1.0 c cairo com_err crypto dbus-1 dbus-glib-1
WANTLIB += execinfo expat fontconfig freetype gcrypt gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnutls
WANTLIB += gobject-2.0 gpg-error gssapi gthread-2.0 gtk-x11-2.0
WANTLIB += krb5 kvm ltdl m nspr4 nss3 ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangoxft-1.0 pcre pixman-1 plc4 plds4 xklavier
WANTLIB += png pthread pthread-stubs smime3 soup-2.4 sqlite3 ssl3 rsvg-2
WANTLIB += startup-notification-1 tasn1 vorbis vorbisfile xcb croco-0.6
WANTLIB += xcb-atom xcb-aux xcb-event xcb-render xcb-render-util
WANTLIB += xkbfile xml2 z canberra canberra-gtk camel-1.2 ebook-1.2
WANTLIB += edataserver-1.2 gnomekbd gnomekbdui metacity-private
WANTLIB += unique-1.0 gnome-desktop-2 gnome-menu gtop-2.0
WANTLIB += gdata gnome-keyring nssutil3 proxy soup-gnome-2.4

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

LIB_DEPENDS=		:libcanberra->=0.10p0:audio/libcanberra \
			::databases/evolution-data-server \
			::www/libcroco \
			::x11/gnome/libgnomekbd \
			::x11/gnome/librsvg \
			::x11/gnome/libxklavier \
			::x11/gnome/metacity \
			::devel/libunique \
			::x11/gnome/desktop \
			::x11/gnome/menus \
			::devel/libgtop2			
BUILD_DEPENDS=		::x11/gnome/settings-daemon \
			:shared-mime-info->=0.21:misc/shared-mime-info
RUN_DEPENDS=		:shared-mime-info->=0.21:misc/shared-mime-info \
			::x11/gnome/settings-daemon \
			::x11/gnome/terminal

MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	control-center2

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-update-mimedb \
		--enable-aboutme
CONFIGURE_ENV= 	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		XCURSOR_ICONDIR=${LOCALBASE}/lib/X11/icons

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/controlcenter2 \
		pkgconfigdir=${PREFIX}/lib/pkgconfig/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/capplets/common/gnome-theme-info.c

.include <bsd.port.mk>
