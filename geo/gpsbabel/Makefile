# $OpenBSD: Makefile,v 1.11 2008/08/21 05:20:53 ckuethe Exp $

COMMENT-main=		GPS waypoint, track, and route conversion tool
COMMENT-gui=		Tk front-end to gpsbabel

VERSION=		1.3.5
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

do-fetch:
	@test -f ${FULLDISTDIR}/${DISTNAME}.tar.gz || \
	${FETCH_CMD} -o ${FULLDISTDIR}/${DISTNAME}.tar.gz \
	    ${HOMEPAGE}/plan9.php?dl=gpsbabel-1.3.5.tar.gz

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
