# $OpenBSD: Makefile,v 1.17 2010/11/07 19:12:42 espie Exp $

COMMENT-main=		GPS waypoint, track, and route conversion tool
COMMENT-gui=		Tk front-end to gpsbabel

VERSION=		1.3.6
DISTNAME=		gpsbabel-${VERSION}
PKGNAME-main=		gpsbabel-${VERSION}
PKGNAME-gui=		gpsbabel-gui-${VERSION}
CATEGORIES=		geo

HOMEPAGE=		http://www.gpsbabel.org/

MAINTAINER=		Chris Kuethe <ckuethe@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

#MASTER_SITES=		${HOMEPAGE}
MASTER_SITES=		http://comstyle.com/source/ \
			ftp://quatramaran.ens.fr/pub/espie/

AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	--with-zlib=system \
			--with-shapefile=system \
			--with-doc=./babelweb
#CONFIGURE_ENV+=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
#			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
#			WEB=${WRKSRC} 
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			WEB=${WRKSRC}

USE_GMAKE=		Yes
MULTI_PACKAGES=		-main -gui

MODULES=		x11/tk
MODTK_VERSION=		8.4

BUILD_DEPENDS=		::textproc/libxslt \
			::textproc/docbook \
			::textproc/docbook-xsl
LIB_DEPENDS-main=	::devel/libusb \
			::devel/shapelib

WANTLIB-main=		expat m c z usb.>=1 shp.>=1

LIB_DEPENDS-gui=
PKG_ARCH-gui=	*
RUN_DEPENDS-gui=	::geo/gpsbabel \
			${MODTK_RUN_DEPENDS}

post-build:
	gmake -C ${WRKSRC} doc

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gpsbabel ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/guibabel ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gpsbabel
	${INSTALL_DATA} ${WRKSRC}/babelweb/htmldoc-*/*.html \
		${PREFIX}/share/doc/gpsbabel
	${INSTALL_DATA} ${WRKSRC}/README* ${PREFIX}/share/doc/gpsbabel

.include <bsd.port.mk>
