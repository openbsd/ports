# $OpenBSD: Makefile,v 1.1.1.1 2007/09/13 21:23:00 martynas Exp $

SHARED_ONLY=	Yes

COMMENT=	document centric objects and utilities

GNOME_PROJECT=	goffice
GNOME_VERSION=	0.2.2
V=		${GNOME_VERSION}
SHARED_LIBS +=	goffice-1            0.0      # .2.2
CATEGORIES=	devel

MAINTAINER=	Martynas Venckus <martynas@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		audiofile bonobo-2 bonobo-activation bonoboui-2 bz2 \
		cairo crypto dbus-1 dbus-glib-1 esd expat fontconfig \
		freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomevfs-2 gobject-2.0 gsf-1 gthread-2.0 gtk-x11-2.0 \
		jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 png popt \
		ssl util xml2 z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	glade-2.0.>=0.6::devel/libglade2 \
		gnomeprint-2-2.>=2::x11/gnome/libgnomeprint \
		gnomeui-2.>=1800::x11/gnome/libgnomeui \
		gsf-gnome-1.>=114:libgsf-gnome-*:devel/libgsf,-gnome \

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--with-cairo

SUBST_VARS=	V

.include <bsd.port.mk>
