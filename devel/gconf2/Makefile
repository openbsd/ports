# $OpenBSD: Makefile,v 1.13 2005/11/13 16:53:48 marcm Exp $

COMMENT=		"configuration database system for GNOME"

VERSION=		2.10.1
DISTNAME=		GConf-${VERSION}
PKGNAME=		gconf2-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/projects/gconf/

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/GConf/2.10/}
EXTRACT_SUFX=           .tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		ORBit-2::devel/ORBit2 \
			gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
			xml2.6::textproc/libxml

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xrender Xext atk-1.0.0.0 c cairo glitz \
			fontconfig freetype glib-2.0.0.0 gmodule-2.0.0.0 \
			gobject-2.0.0.0 gthread-2.0.0.0 m pango-1.0.0.0 \
			pangoft2-1.0.0.0 pangocairo-1.0.1000.0 \
			popt pthread png z

DEFAULT_GCONF_SOURCE=	xml::/var/db/gconf/gconf.xml.defaults

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-conf
CONFIGURE_ARGS+=	--enable-gconf-source=${DEFAULT_GCONF_SOURCE}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gconf2; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gconf2; \

.include <bsd.port.mk>
