# $OpenBSD: Makefile,v 1.83 2010/10/18 13:18:14 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		GNOME display manager

GNOME_PROJECT=		gdm
GNOME_VERSION=		2.20.11

REVISION=		6

HOMEPAGE=		http://projects.gnome.org/gdm/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 c
WANTLIB += cairo croco-0.6 dmx expat fontconfig freetype gailutil
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs util wrap xcb xcb-render rsvg-2
WANTLIB += xcb-render-util xml2 z gnomecanvas-2

BUILD_DEPENDS=		::x11/gnome/zenity
RUN_DEPENDS=		:sox-*:audio/sox \
			:hicolor-icon-theme-*:x11/hicolor-icon-theme \
			::x11/gnome/zenity \
			::security/gksu-polkit
LIB_DEPENDS=		::x11/gnome/librsvg \
			::x11/gnome/libgnomecanvas

MODULES=		devel/gettext \
			x11/gnome

USE_LIBTOOL=		gnu
MODGNOME_HELP_FILES=	Yes

CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--localstatedir=/var \
			--mandir=${PREFIX}/man \
			--sysconfdir=${SYSCONFDIR} \
			--without-xevie \
			--without-libaudit \
			--with-sysconfsubdir=X11/gdm \
			--with-dmconfdir=${LOCALBASE}/share/xsessions \
			--with-pid-file=/var/run/gdm.pid \
			--with-tcp-wrappers \
			--with-xdmcp \
			--enable-secureremote \
			--disable-console-helper

# XXX --enable-authentication-scheme=bsdauth

# gdm 2.20.X releases only work with old ConsoleKit versions so instead
# we patch Xsession to start ck-launch-session with the session.
RUN_DEPENDS+=		::sysutils/consolekit
CONFIGURE_ARGS+=	--without-console-kit

# -pthread is needed to resolve some undefined symbols
# (pthread_mutex_trylock in libgthread for gdmflexiserver, gdmXnest...)
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"

# XXX IPv6-only FLAVOR?
CONFIGURE_ARGS+=	--disable-ipv6

FAKE_FLAGS=		gdmconfdir=${PREFIX}/share/examples/gdm

pre-configure:
	${SUBST_CMD} \
		${WRKSRC}/config/{Init.in,PostSession.in,PreSession.in,Xsession.in,XKeepsCrashing} \
		${WRKSRC}/gui/gdmsetup.desktop.in.in

.include <bsd.port.mk>
