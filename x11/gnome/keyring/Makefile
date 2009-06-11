# $OpenBSD: Makefile,v 1.35 2009/06/11 18:38:16 ajacoutot Exp $

COMMENT=		password agent for the GNOME project

GNOME_PROJECT=		gnome-keyring
GNOME_VERSION=		2.24.1
PKGNAME=		${DISTNAME}p6

SHARED_LIBS +=	gp11                 0.0      # .0.0
SHARED_LIBS +=	gnome-keyring        4.0      # .1.1

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-glib-1 \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gpg-error \
		gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

LIB_DEPENDS=		gcrypt::security/libgcrypt \
			tasn1.>=1::security/libtasn1 \
			dbus-1::x11/dbus

USE_X11=		Yes
MODGCONF2_SCHEMAS_DIR=	gnome-keyring

CONFIGURE_ARGS+=	--with-root-certs=/etc/ssl \
			--disable-hal \
			--disable-tests \
			--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
