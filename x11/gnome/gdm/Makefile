# $OpenBSD: Makefile,v 1.65 2009/08/11 08:39:38 ajacoutot Exp $

COMMENT=		GNOME display manager

GNOME_PROJECT=		gdm
GNOME_VERSION=		2.20.10
PKGNAME=		${DISTNAME}p7

HOMEPAGE=		http://projects.gnome.org/gdm/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 bz2 c \
		cairo croco-0.6 dmx expat fontconfig freetype gailutil \
		gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 \
		glitz gmodule-2.0 gnomecanvas-2 gobject-2.0 gsf-1 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png pthread util wrap xml2 z pthread-stubs \
		xcb

BUILD_DEPENDS=		::x11/gnome/zenity
RUN_DEPENDS=		:sox-*:audio/sox \
			:hicolor-icon-theme-*:x11/hicolor-icon-theme \
			::x11/gnome/zenity
LIB_DEPENDS=		rsvg-2::x11/gnome/librsvg

MODULES=		devel/gettext \
			x11/gnome

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes

CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--sysconfdir="${SYSCONFDIR}/X11" \
			--localstatedir=/var \
			--mandir=${PREFIX}/man \
			--enable-secureremote=yes \
			--enable-console-helper=no \
			--disable-scrollkeeper \
			--with-console-kit=no \
			--with-libaudit=no
# not enabled in X.org
CONFIGURE_ARGS+=	--with-xevie=no

# -pthread is needed to resolve some undefined symbols
# (pthread_mutex_trylock in libgthread for gdmflexiserver, gdmXnest...)
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"

# XXX IPv6-only FLAVOR?
CONFIGURE_ARGS+=	--enable-ipv6=no

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples \
			dmconfdir=${PREFIX}/share/examples/dm

pre-configure:
	${SUBST_CMD} \
		${WRKSRC}/config/{Init.in,PostSession.in,PreSession.in,Xsession.in,XKeepsCrashing}

.include <bsd.port.mk>
