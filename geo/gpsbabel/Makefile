# $OpenBSD: Makefile,v 1.8 2007/07/13 08:53:47 aanriot Exp $

COMMENT-main=		"GPS waypoint, track, and route conversion tool"
COMMENT-gui=		"Tk front-end to gpsbabel"

VERSION=		1.3.2
DISTNAME=		gpsbabel-${VERSION}
PKGNAME-main=		gpsbabel-${VERSION}p2
PKGNAME-gui=		gpsbabel-gui-${VERSION}p1
CATEGORIES=		geo

HOMEPAGE=		http://www.gpsbabel.org/

MAINTAINER=		Chris Kuethe <ckuethe@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gpsbabel/}

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	--with-zlib=system \
			--with-shapefile=system \
			--with-doc=./babelweb
CONFIGURE_ENV+=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			WEB=${WRKSRC} 

USE_GMAKE=		Yes
USE_X11=		Yes
NO_REGRESS=		Yes # expects FP conversion to be exact and invertible
MULTI_PACKAGES=		-main -gui

BUILD_DEPENDS=		::textproc/libxslt \
			::textproc/docbook \
			::textproc/docbook-xsl
LIB_DEPENDS-main=	usb.>=1::devel/libusb \
			shp.>=1::devel/shapelib

WANTLIB-main=		expat m c z

LIB_DEPENDS-gui=
PKG_ARCH-gui=	*
RUN_DEPENDS-gui=	::geo/gpsbabel \
			:tk-8.4.*:x11/tk/8.4

post-build:
	gmake -C ${WRKSRC} doc

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gpsbabel ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/guibabel ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gpsbabel
	${INSTALL_DATA} ${WRKSRC}/babelweb/htmldoc-${VERSION}/*.html \
		${PREFIX}/share/doc/gpsbabel
	${INSTALL_DATA} ${WRKSRC}/README* ${PREFIX}/share/doc/gpsbabel

.include <bsd.port.mk>
