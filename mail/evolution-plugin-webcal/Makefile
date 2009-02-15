# $OpenBSD: Makefile,v 1.5 2009/02/15 17:33:52 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		webcal(endar) handler for GNOME

GNOME_PROJECT=		evolution-webcal
GNOME_VERSION=		2.24.0
PKGNAME=		evolution-plugin-webcal-${GNOME_VERSION}p2

CATEGORIES=    		mail

HOMEPAGE=		http://www.gnome.org/projects/evolution/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		bonobo-2 bonobo-activation bonoboui-2 c cairo dbus-1 \
		expat fontconfig freetype gailutil gconf-2 gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 \
		gnomecanvas-2 gnomevfs-2 gnutls gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png popt pthread xml2 z

MODULES=		devel/gettext \
			x11/gnome

RUN_DEPENDS=		::mail/evolution

LIB_DEPENDS=		ecal-1.2,edataserver-1.2::databases/evolution-data-server \
			soup-2.4::devel/libsoup \
			gnome-keyring::x11/gnome/keyring \
			gnomeui-2::x11/gnome/libgnomeui

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=        --with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/evolution-webcal \
			--disable-schemas-install
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
