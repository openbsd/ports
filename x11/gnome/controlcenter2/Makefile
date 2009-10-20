# $OpenBSD: Makefile,v 1.73 2009/10/20 10:06:14 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		GNOME control center

GNOME_PROJECT=		gnome-control-center
GNOME_VERSION=		2.28.1

SHARED_LIBS +=	gnome-window-settings 3.0      # .1.0

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xft Xi Xinerama Xrandr
WANTLIB += Xrender Xss asn1 atk-1.0 bonobo-2 bonobo-activation
WANTLIB += bz2 c cairo com_err crypto dbus-1 dbus-glib-1 execinfo
WANTLIB += expat fontconfig freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gnutls gobject-2.0
WANTLIB += gpg-error gsf-1 gssapi gthread-2.0 gtk-x11-2.0 krb5
WANTLIB += kvm ltdl m nspr4 nss3 ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangoxft-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png pthread pthread-stubs smime3 softokn3 soup-2.4
WANTLIB += sqlite3 ssl3 startup-notification-1 tasn1 vorbis vorbisfile
WANTLIB += xcb xcb-atom xcb-aux xcb-event xkbfile xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

LIB_DEPENDS=		canberra,canberra-gtk:libcanberra->=0.10p0:audio/libcanberra \
			camel-1.2,ebook-1.2,edataserver-1.2::databases/evolution-data-server \
			croco-0.6::www/libcroco \
			gnomekbd,gnomekbdui::x11/gnome/libgnomekbd \
			rsvg-2::x11/gnome/librsvg \
			xklavier::x11/gnome/libxklavier \
			metacity-private::x11/gnome/metacity \
			unique-1.0.>=1::devel/libunique \
			gnome-desktop-2.>=7::x11/gnome/desktop \
			gnome-menu.>=5::x11/gnome/menus \
			gtop-2.0.>=8::devel/libgtop2			
BUILD_DEPENDS=		::x11/gnome/settings-daemon \
			:shared-mime-info->=0.21:misc/shared-mime-info
RUN_DEPENDS=		:shared-mime-info->=0.21:misc/shared-mime-info \
			::x11/gnome/settings-daemon \
			::audio/sound-theme-freedesktop \
			::x11/gnome/terminal

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	control-center2

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-hal \
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
