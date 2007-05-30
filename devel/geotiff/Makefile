# $OpenBSD: Makefile,v 1.3 2007/05/30 20:41:53 jason Exp $

COMMENT=	"GIS TIFF interchange library"

DISTNAME=	libgeotiff-1.2.3
PKGNAME=	$(DISTNAME)p0
CATEGORIES=    	devel geo
SHARED_LIBS=	geotiff 1.2.3

HOMEPAGE=	http://www.remotesensing.org/geotiff/geotiff.html

MAINTAINER=	Jason Wright <jason@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.remotesensing.org/geotiff/libgeotiff/ \
			http://proj.maptools.org/dl/

CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.59
CONFIGURE_ENV	+=	CFLAGS="-I${LOCALBASE}/include -fPIC" \
			LDFLAGS=-L${LOCALBASE}/lib
CONFIGURE_ARGS=		--with-jpeg=${LOCALBASE} \
			--with-proj=${LOCALBASE} \
			--with-libtiff=${LOCALBASE}

WANTLIB=		m z c jpeg

LIB_DEPENDS=		proj::devel/proj \
			tiff::graphics/tiff

.include <bsd.port.mk>
