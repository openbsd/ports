# $OpenBSD: Makefile,v 1.44 2007/04/06 10:10:01 ajacoutot Exp $

COMMENT=	"technical diagrams drawing tool"

DISTNAME=	dia-0.96.1
CATEGORIES=	graphics

HOMEPAGE=	http://www.gnome.org/projects/dia/

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/dia/0.96/}

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=	X11 Xau Xdmcp expat Xrender atk-1.0 c z xml2 pthread gthread-2.0 \
		fontconfig freetype glib-2.0 gmodule-2.0 \
		gobject-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png cairo glitz

BUILD_DEPENDS=	:p5-XML-Parser-*:textproc/p5-XML-Parser \
		::textproc/docbook-xsl
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		art_lgpl_2.>=5::graphics/libart \
		popt::devel/popt \
		xslt.>=1::textproc/libxslt

MODULES=	devel/gettext

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libpng \
			-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LOCALBASE=${LOCALBASE}

FLAVORS=		gnome
FLAVOR?=

.if ${FLAVOR:L:Mgnome}
CONFIGURE_ARGS+=	--enable-gnome
LIB_DEPENDS+=		gnomeui-2::x11/gnome/libgnomeui
WANTLIB+=		gthread-2.0 gnomevfs-2 ORBitCosNaming-2 crypto \
			audiofile bonobo-activation jpeg bonobo-2 gconf-2 \
			ICE bonoboui-2 gnomecanvas-2 SM ORBit-2 pthread esd \
			ssl gnome-2 gnome-keyring
.else
CONFIGURE_ARGS+=	--disable-gnome
.endif

post-configure:
	@rm -f ${WRKSRC}/doc/en/dia.1

.include <bsd.port.mk>
