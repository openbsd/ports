# $OpenBSD: Makefile,v 1.12 2013/03/11 11:10:54 espie Exp $

COMMENT=		open-source JPEG 2000 codec library

DISTNAME=		openjpeg-1.5.0
REVISION=		3

SHARED_LIBS +=	openjpeg             5.0      # 6.0

CATEGORIES=		graphics

HOMEPAGE=		http://www.openjpeg.org/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c jpeg lcms2 m png tiff z

MASTER_SITES=		http://openjpeg.googlecode.com/files/

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes
USE_LIBTOOL=		Yes

LIB_DEPENDS=		graphics/lcms2 \
			graphics/png

pre-patch:
	perl -i -pe 's/\r$$//; s/\t*$$//;' ${WRKSRC}/libopenjpeg/opj_malloc.h

post-install:
	cd ${PREFIX}/share/doc/ && mv openjpeg-* openjpeg

.include <bsd.port.mk>
