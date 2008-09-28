# $OpenBSD: Makefile,v 1.5 2008/09/28 08:55:01 sturm Exp $

COMMENT=		graphical predictive text input system

GNOME_PROJECT=		dasher
GNOME_VERSION=		4.6.1
PKGNAME=		${DISTNAME}p3

CATEGORIES=		x11

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender Xtst art_lgpl_2 atk-1.0 audiofile bonobo-2 \
		bonobo-activation bonoboui-2 c cairo crypto dbus-1 \
		dbus-glib-1 esd expat fontconfig freetype gailutil \
		gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 glib-2.0 \
		glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 jpeg \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		popt pthread ssl stdc++ util xml2 z

BUILD_DEPENDS=		::x11/gnome/doc-utils
LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui \
			cspi,spi::x11/gnome/at-spi
RUN_DEPENDS=		::x11/gnome/doc-utils

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/dasher/ \
			--disable-schema-install \
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
