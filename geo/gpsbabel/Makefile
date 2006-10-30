# $OpenBSD: Makefile,v 1.1.1.1 2006/10/30 17:44:57 ckuethe Exp $

COMMENT=		"GPS waypoint, track, and route conversion tool"
COMMENT-gui=		"Tk front-end to gpsbabel"

VERSION=		1.3.1
DISTNAME=		gpsbabel-${VERSION}
PKGNAME-gui=		gpsbabel-gui-${VERSION}
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
CONFIGURE_ARGS+=	--with-zlib=system --with-shapefile=system
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			WEB=${WRKSRC} 

USE_GMAKE=		Yes
NO_REGRESS=		Yes # expects FP conversion to be exact and invertible
BUILD_DEPENDS=		xsltproc::textproc/libxslt \
			::textproc/docbook \
			::textproc/docbook-xsl
LIB_DEPENDS=		expat.>=4::textproc/expat \
			usb.>=1::devel/libusb \
			shp.>=1::devel/shapelib

MULTI_PACKAGES=		-gui

SUBPACKAGE?=

.if defined(PACKAGING)
. if empty(SUBPACKAGE)
WANTLIB=		m c z
. elif ${SUBPACKAGE} == "-gui"
LIB_DEPENDS=
PKG_ARCH=	*
RUN_DEPENDS=	::geo/gpsbabel \
		:tk-8.4.*:x11/tk/8.4
. endif
.endif

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
