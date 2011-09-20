# $OpenBSD: Makefile,v 1.35 2011/09/20 21:10:01 jasper Exp $

COMMENT=		VNC viewer widget for GTK

GNOME_PROJECT=		gtk-vnc
GNOME_VERSION=		0.4.3

PKGNAME=		${DISTNAME}

REVISION=		5

SHARED_LIBS +=  gtk-vnc-2.0               0.0 # 0.2
SHARED_LIBS +=  gvnc-1.0             0.0 # 0.1

CATEGORIES=		x11 net

HOMEPAGE=		http://live.gnome.org/gtk-vnc

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += drm expat fontconfig freetype gcrypt gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += gpg-error gthread-2.0 hogweed m nettle pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sasl2 tasn1 xcb xcb-render xcb-shm z p11-kit
WANTLIB += cairo-gobject gdk-3 gtk-3

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}

LIB_DEPENDS=		security/gnutls \
			security/cyrus-sasl2 \
			security/libgcrypt \
			x11/gtk+3

MODGNOME_TOOLS= 	goi

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-examples \
			--with-sasl \
			--without-libview \
			--with-gtk=3.0

# mozilla plugin and python bindings are gtk+2 only
CONFIGURE_ARGS +=	--disable-plugin \
			--without-python

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
