# $OpenBSD: Makefile,v 1.21 2015/05/22 11:31:16 ajacoutot Exp $

COMMENT=		open-source JPEG 2000 codec library

DISTNAME=		openjpeg-1.5.1
REVISION=		1

SHARED_LIBS +=	openjpeg             5.0      # 6.0

CATEGORIES=		graphics

HOMEPAGE=		http://www.openjpeg.org/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c jpeg lcms2 m png pthread tiff z

LIBM_CHECK = lrintf

MASTER_SITES=		https://openjpeg.googlecode.com/files/

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes

LIB_DEPENDS=		graphics/lcms2 \
			graphics/png \
			graphics/tiff

# XXX Yes, really, libtiff by itself won't be detected
LIB_DEPENDS +=		graphics/jpeg
CONFIGURE_ENV += TIFF_LIBS='-L${LOCALBASE}/lib -ltiff -ljpeg' \
	TIFF_CFLAGS='-I${LOCALBASE}/include'

pre-patch:
	perl -i -pe 's/\r$$//; s/\t*$$//;' ${WRKSRC}/libopenjpeg/opj_malloc.h

post-install:
	cd ${PREFIX}/share/doc/ && mv openjpeg-* openjpeg

.include <bsd.port.mk>
