# $OpenBSD: Makefile,v 1.17 2009/04/06 10:05:21 ajacoutot Exp $

COMMENT=		project management application

GNOME_PROJECT=		planner
GNOME_VERSION=		0.14.3
PKGNAME=		${DISTNAME}p6

CATEGORIES=		x11

SHARED_LIBS +=  planner-1            0.0      # .0.0

HOMEPAGE=		http://live.gnome.org/Planner

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		bonobo-2 bonobo-activation c cairo crypto \
		dbus-1 dbus-glib-1 expat fontconfig freetype gconf-2 \
		gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 glib-2.0 \
		glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomeprint-2-2 gnomevfs-2 gobject-2.0 gpg-error gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		png popt pthread ssl util xml2 z Xcomposite Xdamage gailutil \
		gio-2.0 pcre pixman-1

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:py-gtk2-*:x11/py-gtk2 \
			:shared-mime-info->=0.21:misc/shared-mime-info

LIB_DEPENDS=		bonoboui-2::x11/gnome/libbonoboui \
			gnomeprintui-2-2::x11/gnome/libgnomeprintui \
			gnomeui-2::x11/gnome/libgnomeui \
    			exslt,xslt::textproc/libxslt

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/planner \
			--disable-schemas-install \
			--disable-update-mimedb \
			--enable-python \
			--enable-eds=no

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON="${MODPY_BIN}" \
			UPDATE_DESKTOP_DATABASE="/usr/bin/false"
post-patch:
			@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
