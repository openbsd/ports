# $OpenBSD: Makefile,v 1.21 2009/06/08 17:59:15 ajacoutot Exp $

COMMENT=		project management application

GNOME_PROJECT=		planner
GNOME_VERSION=		0.14.4
PKGNAME=		${DISTNAME}p1

CATEGORIES=		x11

SHARED_LIBS +=  planner-1            0.0      # .0.0

HOMEPAGE=		http://live.gnome.org/Planner

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation
WANTLIB += c cairo crypto dbus-1 dbus-glib-1 expat exslt fontconfig
WANTLIB += freetype gailutil gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2
WANTLIB += gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0
WANTLIB += gpg-error gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png popt pthread ssl util
WANTLIB += xml2 xslt z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:py-gtk2-*:x11/py-gtk2 \
			:shared-mime-info->=0.21:misc/shared-mime-info

LIB_DEPENDS=		bonoboui-2::x11/gnome/libbonoboui \
			gnomeui-2::x11/gnome/libgnomeui \
			${MODPY_LIB_DEPENDS}

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	planner

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--disable-update-mimedb \
			--enable-gtk-doc=no \
			--enable-python \
			--enable-python-plugin=yes \
			--enable-eds=no \
			--enable-eds-backend=no \
			--with-database=no

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			UPDATE_DESKTOP_DATABASE="/usr/bin/false"

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
