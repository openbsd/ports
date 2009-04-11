# $OpenBSD: Makefile,v 1.57 2009/04/11 10:05:47 ajacoutot Exp $

COMMENT=	technical diagrams drawing tool

DISTNAME=	dia-0.96.1
PKGNAME=	${DISTNAME}p12
CATEGORIES=	graphics

HOMEPAGE=	http://live.gnome.org/Dia/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/dia/0.96/}

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread z gio-2.0

BUILD_DEPENDS=	::textproc/xmlto \
		::textproc/docbook
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		art_lgpl_2.>=5::graphics/libart \
		popt::devel/popt \
		xml2.>=10::textproc/libxml \
		xslt.>=1::textproc/libxslt
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

MODULES=	devel/gettext \
		textproc/intltool

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

# patch-doc_en_usage-layers_xml seen as binary file
DIFF_ARGS=	-a

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng \
		-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LOCALBASE=${LOCALBASE}
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--without-cairo \
		--without-python

FLAVORS=	gnome
FLAVOR?=

.if ${FLAVOR:L:Mgnome}
CONFIGURE_ARGS+=--enable-gnome \
		--with-gnomeprint
LIB_DEPENDS+=	gnomeui-2::x11/gnome/libgnomeui \
		gnomeprint-2-2::x11/gnome/libgnomeprint
WANTLIB+=	ICE ORBit-2 ORBitCosNaming-2 SM bonobo-2 \
		bonobo-activation bonoboui-2 crypto dbus-1 dbus-glib-1 \
		gailutil gconf-2 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 ssl util
RUN_DEPENDS+=	:yelp-*:x11/gnome/yelp
.else
CONFIGURE_ARGS+=--disable-gnome \
		--without-gnomeprint
RUN_DEPENDS+=	::devel/xdg-utils
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/app/commands.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dia/html/{en,pl}
	xmlto -o ${PREFIX}/share/doc/dia/html/en html ${WRKSRC}/doc/en/dia.xml
	xmlto -o ${PREFIX}/share/doc/dia/html/pl html ${WRKSRC}/doc/pl/dia.xml
	@cd ${PREFIX}/share/doc/dia/html && ln -s en C
.if ${FLAVOR:L:Mgnome}
	@cd ${PREFIX}/share/gnome/help/dia && ln -s en C
.endif

.include <bsd.port.mk>
