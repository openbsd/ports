# $OpenBSD: Makefile,v 1.24 2016/10/26 18:16:49 jca Exp $

COMMENT=		open-source JPEG 2000 codec library

V=			1.5.2
DISTNAME=		openjpeg-version.$V
PKGNAME=		openjpeg-$V
DISTFILES=		${DISTNAME}{version.$V}.tar.gz

SHARED_LIBS +=	openjpeg             5.0      # 6.2

CATEGORIES=		graphics

HOMEPAGE=		http://www.openjpeg.org/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c jpeg lcms2 m png pthread tiff z

# not using GH_* because it strips 'v' from version
MASTER_SITES =		https://github.com/uclouvain/openjpeg/archive/

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.14
BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS=		graphics/lcms2 \
			graphics/png \
			graphics/tiff

# XXX Yes, really, libtiff by itself won't be detected
LIB_DEPENDS +=		graphics/jpeg
CONFIGURE_ENV += TIFF_LIBS='-L${LOCALBASE}/lib -ltiff -ljpeg' \
	TIFF_CFLAGS='-I${LOCALBASE}/include'

pre-patch:
	perl -i -pe 's/\r$$//; s/\t*$$//;' ${WRKSRC}/libopenjpeg/opj_malloc.h

post-patch:
	cd ${WRKSRC} && env AUTOCONF_VERSION="${AUTOCONF_VERSION}" \
	    AUTOMAKE_VERSION="${AUTOMAKE_VERSION}" ./bootstrap.sh

post-install:
	cd ${PREFIX}/share/doc/ && mv openjpeg-* openjpeg

.include <bsd.port.mk>
