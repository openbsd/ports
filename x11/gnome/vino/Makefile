# $OpenBSD: Makefile,v 1.2 2008/06/02 17:58:24 jasper Exp $

COMMENT=		VNC server for remote acces to your GNOME desktop

GNOME_PROJECT=		vino
GNOME_VERSION=		2.20.1
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 audiofile bonobo-2 bonobo-activation \
		bonoboui-2 c cairo crypto dbus-1 dbus-glib-1 esd expat \
		fontconfig freetype gailutil gconf-2 gcrypt gdk-x11-2.0 \
		gdk_pixbuf-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 \
		gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0 \
		gpg-error gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png popt pthread ssl \
		util xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		notify::devel/libnotify \
			gnutls::security/gnutls \
			gnomeui-2::x11/gnome/libgnomeui

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/vino \
			--disable-schemas-install \
			--disable-avahi \
			--enable-http-server=no \
			--enable-session-support \
			--enable-gnome-keyring \
			--enable-libnotify \
			--disable-ipv6

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
