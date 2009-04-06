# $OpenBSD: Makefile,v 1.14 2009/04/06 10:05:20 ajacoutot Exp $

COMMENT=		graphical predictive text input system

GNOME_PROJECT=		dasher
GNOME_VERSION=		4.10.0
PKGNAME=		${DISTNAME}p0

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xtst art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 c cairo crypto dbus-1 dbus-glib-1 expat
WANTLIB += fontconfig freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2
WANTLIB += gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png popt pthread ssl stdc++
WANTLIB += util xml2 z

LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui \
			cspi,spi::x11/gnome/at-spi

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/dasher/ \
			--enable-schemas-install \
			--disable-scrollkeeper \
			--with-cairo \
			--with-gnome \
			--enable-a11y \
			--disable-speech \
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include " \
			LDFLAGS="-L${LOCALBASE}/lib " \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include "

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
