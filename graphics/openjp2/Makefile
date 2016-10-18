# $OpenBSD: Makefile,v 1.7 2016/10/18 09:23:34 sthen Exp $

COMMENT =	open-source JPEG 2000 codec library

GH_ACCOUNT =	uclouvain
GH_PROJECT =	openjpeg
GH_TAGNAME =	v2.1.2
DISTNAME =	openjp2-${GH_TAGNAME:S/v//}

SHARED_LIBS +=	openjp2                   2.0

CATEGORIES =	graphics

HOMEPAGE =	http://www.openjpeg.org/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c lcms2 m png pthread tiff z

MODULES =	devel/cmake
NO_TEST =	Yes
CONFIGURE_ARGS = -DOPENJPEG_INSTALL_MAN_DIR=man \
		-DOPENJPEG_INSTALL_SUBDIR:STRING=openjp2 \
		-DOPENJPEG_SOVERSION:STRING=${LIBopenjpeg_VERSION}

LIB_DEPENDS =	graphics/lcms2 \
		graphics/png

pre-patch:
	cd ${WRKSRC}/src/lib && perl -i -pe 's/\r$$//; s/\t*$$//;' \
		openmj2/opj_malloc.h openjp2/opj_malloc.h

post-install:
	cd ${WRKSRC}/doc/man; \
	       ${INSTALL_DATA} man1/* ${PREFIX}/man/man1/; \
	       ${INSTALL_DATA} man3/* ${PREFIX}/man/man3/

.include <bsd.port.mk>
