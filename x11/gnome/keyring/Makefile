# $OpenBSD: Makefile,v 1.18 2007/11/10 14:56:25 jasper Exp $

COMMENT=		password agent for the GNOME project

GNOME_PROJECT=		gnome-keyring
GNOME_VERSION=		2.20.1
SHARED_LIBS +=	gnome-keyring        2.0      # .1.1

# GPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 gpg-error \
		gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre png pthread z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		gcrypt::security/libgcrypt \
			gdk-x11-2.0.>=1000.0,gdk_pixbuf-2.0.>=1000.0,gtk-x11-2.0.>=1000.0::x11/gtk+2 \
			dbus-1.>=6::x11/dbus

USE_X11=		Yes
CONFIGURE_ARGS+=	--disable-hal \
			--disable-tests
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
