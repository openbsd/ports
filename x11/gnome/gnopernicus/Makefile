# $OpenBSD: Makefile,v 1.14 2009/04/16 08:11:13 ajacoutot Exp $

COMMENT=		screen reader and magnifier for GNOME desktop

GNOME_PROJECT=		gnopernicus
GNOME_VERSION=		1.1.2
PKGNAME=		${DISTNAME}p10

SHARED_LIBS +=  srutil               0.0      # .2.0
SHARED_LIBS +=  srconf               0.0      # .2.0
SHARED_LIBS +=  brl                  0.0      # .2.0
SHARED_LIBS +=  srs                  0.0      # .2.0
SHARED_LIBS +=  srlow                0.0      # .2.0
SHARED_LIBS +=  ke                   0.0      # .2.0
SHARED_LIBS +=  mag                  0.0      # .2.0

HOMEPAGE=		http://www.baum.ro/gnopernicus.html

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender Xtst art_lgpl_2 atk-1.0 bonobo-2 \
		bonobo-activation bonoboui-2 c cairo crypto cspi dbus-1 \
		dbus-glib-1 expat fontconfig freetype gailutil \
		gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 \
		glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomeui-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png popt pthread spi ssl util xml2 z

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::x11/gnome/libgail-gnome
LIB_DEPENDS=		gnome-mag::x11/gnome/mag \
			gnomespeech::x11/gnome/speech

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnopernicus/ \
			--with-default-fonts-path=${X11BASE}/lib/X11/fonts/Type1 \
			--disable-schemas-install \
			--disable-scrollkeeper \
			--disable-brltty \
			--disable-gtk-doc \
			--disable-paranoia \
			--enable-ipv6 \
			--enable-magnifier

FAKE_FLAGS=		translationdir=${PREFIX}/share/examples/gnopernicus/translation_tables

.include <bsd.port.mk>
