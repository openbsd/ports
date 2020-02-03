# $OpenBSD: Makefile,v 1.31 2020/02/03 20:40:38 sthen Exp $

COMMENT=	open-source JPEG 2000 codec library

V=		1.5.2
PORTROACH =	limit:^1
DISTNAME=	openjpeg-version.$V
PKGNAME=	openjpeg-$V
DISTFILES=	${DISTNAME}{version.$V}.tar.gz
REVISION=	0

SHARED_LIBS +=	openjpeg             5.0      # 6.2

CATEGORIES=	graphics

HOMEPAGE=	http://www.openjpeg.org/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c jpeg lcms2 m png pthread tiff z

# not using GH_* because it strips 'v' from version
MASTER_SITES=	https://github.com/uclouvain/openjpeg/archive/

CONFIGURE_STYLE=  autoreconf
SEPARATE_BUILD=	  Yes

AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.14
AUTORECONF=	  ./bootstrap.sh

LIB_DEPENDS=	graphics/lcms2 \
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
