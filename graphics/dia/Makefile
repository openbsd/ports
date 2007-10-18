# $OpenBSD: Makefile,v 1.48 2007/10/18 14:18:40 ajacoutot Exp $

COMMENT=	technical diagrams drawing tool

DISTNAME=	dia-0.96.1
PKGNAME=	${DISTNAME}p3
CATEGORIES=	graphics

HOMEPAGE=	http://live.gnome.org/Dia/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/dia/0.96/}

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender atk-1.0 c cairo expat fontconfig freetype \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 m \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 png pthread xml2 z

BUILD_DEPENDS=	:p5-XML-Parser-*:textproc/p5-XML-Parser \
		::textproc/xmlto \
		::textproc/docbook
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		art_lgpl_2.>=5::graphics/libart \
		popt::devel/popt \
		xslt.>=1::textproc/libxslt
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils \
		:shared-mime-info-*:misc/shared-mime-info

MODULES=	devel/gettext

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libpng \
			-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LOCALBASE=${LOCALBASE}
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--without-cairo \
			--without-gnomeprint \
			--without-python

FLAVORS=		gnome
FLAVOR?=

.if ${FLAVOR:L:Mgnome}
CONFIGURE_ARGS+=	--enable-gnome
LIB_DEPENDS+=		gnomeui-2::x11/gnome/libgnomeui
WANTLIB+=		gthread-2.0 gnomevfs-2 ORBitCosNaming-2 crypto \
			audiofile bonobo-activation jpeg bonobo-2 gconf-2 \
			ICE bonoboui-2 gnomecanvas-2 SM ORBit-2 pthread esd \
			ssl gnome-2 gnome-keyring dbus-1 dbus-glib-1 util
.else
CONFIGURE_ARGS+=	--disable-gnome
.endif

pre-configure:
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g' \
		${WRKSRC}/app/commands.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dia/html/{en,pl}
	xmlto -o ${PREFIX}/share/doc/dia/html/en html ${WRKSRC}/doc/en/dia.xml
	xmlto -o ${PREFIX}/share/doc/dia/html/pl html ${WRKSRC}/doc/pl/dia.xml
	@cd ${PREFIX}/share/doc/dia/html && ln -s en C

.include <bsd.port.mk>
