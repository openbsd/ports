# $OpenBSD: Makefile,v 1.38 2009/10/18 17:26:56 ajacoutot Exp $

COMMENT=		password agent for the GNOME project

GNOME_PROJECT=		gnome-keyring
GNOME_VERSION=		2.28.1

SHARED_LIBS +=  gp11                 0.0      # .0.0
SHARED_LIBS +=  gcr                  0.0      # .0.0
SHARED_LIBS +=  gnome-keyring        5.0      # .1.1

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-glib-1
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	gcrypt::security/libgcrypt \
		tasn1.>=1::security/libtasn1 \
		dbus-1::x11/dbus

USE_X11=	Yes
MODGCONF2_SCHEMAS_DIR= gnome-keyring

CONFIGURE_ARGS=	--with-root-certs=/etc/ssl \
		--disable-pam \
		--disable-tests \
		--disable-gtk-doc
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
