# $OpenBSD: Makefile,v 1.60 2009/08/10 06:31:44 kili Exp $

COMMENT=	technical diagrams drawing tool

GNOME_PROJECT=	dia
GNOME_VERSION=	0.97
PKGNAME=	${DISTNAME}p1

CATEGORIES=	graphics

HOMEPAGE=	http://live.gnome.org/Dia/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xml2 z

BUILD_DEPENDS=	::textproc/docbook-xsl
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		art_lgpl_2.>=5::graphics/libart \
		xslt.>=3::textproc/libxslt

MODULES=	devel/gettext \
		x11/gnome \
		lang/python

USE_X11=	Yes
DESKTOP_FILES=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng \
		-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-cairo \
		--enable-db2html=no \
		--with-hardbooks=no

FLAVORS=	gnome
FLAVOR?=

.if ${FLAVOR:L:Mgnome}
CONFIGURE_ARGS+=--enable-gnome \
		--with-python \
		--with-swig
BUILD_DEPENDS+=	::devel/swig
LIB_DEPENDS+=	gnomeui-2::x11/gnome/libgnomeui \
		${MODPY_LIB_DEPENDS}
WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 crypto dbus-1 dbus-glib-1 gconf-2 gailutil
WANTLIB += gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 popt ssl
WANTLIB += util avahi-client avahi-common avahi-glib
MODGNOME_HELP_FILES= Yes
.else
# help is only installed and usable with yelp
PATCH_LIST=	patch-* no_gnome-patch-*
CONFIGURE_ARGS+=--disable-gnome \
		--without-python \
		--without-swig
RUN_DEPENDS+=	::devel/xdg-utils
MODPY_RUNDEP=	No
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/app/commands.c \
		${WRKSRC}/po-checktrans.py

.include <bsd.port.mk>
