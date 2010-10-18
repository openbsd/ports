# $OpenBSD: Makefile,v 1.48 2010/10/18 13:18:14 jasper Exp $

COMMENT=		password agent for the GNOME project

GNOME_PROJECT=		gnome-keyring
GNOME_VERSION=		2.32.0

REVISION=		1

SHARED_LIBS +=  gp11                 1.0      # .0.0
SHARED_LIBS +=  gcr                  1.0      # .0.0

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 dbus-1
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 gcrypt
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-render-util z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	::security/libgcrypt \
		::security/libtasn1 \
		::x11/dbus \
		::x11/gtk+2

CONFIGURE_ARGS=	--with-root-certs=/etc/ssl \
		--disable-pam \
		--disable-tests \
		--disable-gtk-doc
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
