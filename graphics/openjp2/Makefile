# $OpenBSD: Makefile,v 1.2 2014/06/12 14:07:17 sthen Exp $

COMMENT =		open-source JPEG 2000 codec library

V =			2.0.1
# 2.1.0 changes opj_stream_set_user_data API; gdal/mupdf need to catch up
DISTNAME =		openjpeg-$V
PKGNAME =		openjp2-$V

SHARED_LIBS +=	openjp2                   0.0 # 2.0

CATEGORIES =		graphics

HOMEPAGE =		http://www.openjpeg.org/

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c lcms2 m png pthread tiff z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=openjpeg.mirror/}

MODULES =		devel/cmake
CONFIGURE_ARGS =	-DOPENJPEG_INSTALL_MAN_DIR=${PREFIX}/man \
			-DOPENJPEG_INSTALL_SUBDIR:STRING=openjp2 \
			-DOPENJPEG_SOVERSION:STRING=${LIBopenjpeg_VERSION}

LIB_DEPENDS =		graphics/lcms2 \
			graphics/png

NO_TEST =		Yes

pre-patch:
	cd ${WRKSRC}/src/lib && perl -i -pe 's/\r$$//; s/\t*$$//;' openmj2/opj_malloc.h openjp2/opj_malloc.h

.include <bsd.port.mk>
