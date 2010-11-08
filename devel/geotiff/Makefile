# $OpenBSD: Makefile,v 1.9 2010/11/08 09:57:39 espie Exp $

COMMENT=	GIS TIFF interchange library

DISTNAME=	libgeotiff-1.2.5
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel geo
SHARED_LIBS=	geotiff 1.2

HOMEPAGE=	http://trac.osgeo.org/geotiff/

MAINTAINER=	Landry Breuil <gaston@gcu.info>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.remotesensing.org/geotiff/libgeotiff/ \
			http://download.osgeo.org/geotiff/libgeotiff/

NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV +=	CFLAGS="-I${LOCALBASE}/include -fPIC" \
			LDFLAGS=-L${LOCALBASE}/lib \
			LIBgeotiff_VERSION=${LIBgeotiff_VERSION}
CONFIGURE_ARGS=		--with-jpeg=${LOCALBASE} \
			--with-proj=${LOCALBASE} \
			--with-libtiff=${LOCALBASE}

WANTLIB=		c jpeg m z proj tiff

LIB_DEPENDS=		::devel/proj \
			::graphics/tiff

.include <bsd.port.mk>
