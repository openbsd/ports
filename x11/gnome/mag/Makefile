# $OpenBSD: Makefile,v 1.10 2009/04/26 11:01:05 ajacoutot Exp $

COMMENT=		screen magnifier for the GNOME desktop

GNOME_PROJECT=		gnome-mag
GNOME_VERSION=		0.15.6
SHARED_LIBS +=	gnome-mag            0.1      # .4.10
CATEGORIES=		sysutils

HOMEPAGE=		https://launchpad.net/gnome-mag

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender Xtst atk-1.0 bonobo-2 bonobo-activation c cairo \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gdk_pixbuf_xlib-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread z

USE_X11=		Yes

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

LIB_DEPENDS=		loginhelper,spi::x11/gnome/at-spi

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::x11/gnome/py-gnome-desktop

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-mag/ \
			--enable-colorblind-applet=no
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS=		LIBgnome-mag_VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/docs/man/magnifier.1

.include <bsd.port.mk>
