# $OpenBSD: Makefile,v 1.7 2012/03/30 07:09:26 sthen Exp $

COMMENT=		open-source JPEG 2000 codec library

DISTNAME=		openjpeg-1.5.0

SHARED_LIBS +=	openjpeg             5.0      # 6.0

CATEGORIES=		graphics

HOMEPAGE=		http://www.openjpeg.org/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m z

MASTER_SITES=		http://openjpeg.googlecode.com/files/

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes
USE_LIBTOOL=		Yes

# static linked
BUILD_DEPENDS=		graphics/lcms2 \
			graphics/png \
			graphics/tiff

pre-patch:
	perl -i -pe 's/\r$$//; s/\t*$$//;' ${WRKSRC}/libopenjpeg/opj_malloc.h

post-install:
	cd ${PREFIX}/share/doc/ && mv openjpeg-* openjpeg

.include <bsd.port.mk>
