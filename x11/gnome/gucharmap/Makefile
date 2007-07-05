# $OpenBSD: Makefile,v 1.4 2007/07/05 22:50:10 jasper Exp $

COMMENT=		Unicode character map for the GNOME project

GNOME_PROJECT=		gucharmap
GNOME_VERSION=		1.10.0
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=	gucharmap            0.0      # .6.1

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		audiofile bonobo-2 bonobo-activation bonoboui-2 c cairo \
		crypto dbus-1 dbus-glib-1 esd expat fontconfig freetype \
		gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 \
		gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png popt pthread ssl util xml2 z

BUILD_DEPENDS=	:gnome-doc-utils-*:x11/gnome/doc-utils
LIB_DEPENDS=	gnomeui-2::x11/gnome/libgnomeui
RUN_DEPENDS=	:yelp-*:x11/gnome/yelp

MODULES=		devel/gettext \
			x11/gnome

USE_X11=		Yes
DESKTOP_FILES=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-scrollkeeper \
			--enable-gnome
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
