# $OpenBSD: Makefile,v 1.13 2009/06/18 01:07:52 sthen Exp $

COMMENT=	Settlers of Catan for GNOME/Gtk

GNOME_PROJECT=	pioneers
GNOME_VERSION=	0.12.2
PKGNAME=	${DISTNAME}p7

CATEGORIES=	games

EXTRACT_SUFX=	.tar.gz

HOMEPAGE=	http://pio.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ORBit-2 ORBitCosNaming-2 X11 Xau Xcomposite Xcursor \
		Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		atk-1.0 bonobo-2 bonobo-activation c cairo \
		crypto dbus-1 dbus-glib-1 expat fontconfig \
		freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gnomevfs-2 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png popt pthread ssl util xml2 z gio-2.0 \
		avahi-client avahi-common avahi-glib

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pio/}

MODULES=	devel/gettext \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::x11/gnome/librsvg
LIB_DEPENDS=	gnome-2.>=1900::x11/gnome/libgnome

USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES=Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_pngtopnm=""
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-protocol=IPv4

pre-configure:
	@perl -pi -e 's,games/pioneers,pioneers,g;' \
		-e 's,/usr/share,${PREFIX}/share,g' \
		${WRKSRC}/client/help/C/pioneers-C.omf \
		${WRKSRC}/docs/pioneers.6 \
		${WRKSRC}/docs/pioneers-server-gtk.6 \
		${WRKSRC}/docs/pioneers-server-console.6 \
		${WRKSRC}/docs/pioneersai.6 \
		${WRKSRC}/docs/pioneers-meta-server.6

.include <bsd.port.mk>
