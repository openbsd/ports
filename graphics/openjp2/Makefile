# $OpenBSD: Makefile,v 1.1.1.1 2013/10/29 00:01:50 sthen Exp $

COMMENT =		open-source JPEG 2000 codec library

V =			2.0.0
DISTNAME =		openjpeg-$V
PKGNAME =		openjp2-$V

SHARED_LIBS +=	openjp2                   0.0 # 2.0

CATEGORIES =		graphics

HOMEPAGE =		http://www.openjpeg.org/

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c jpeg lcms2 m png tiff z

MASTER_SITES =		http://openjpeg.googlecode.com/files/

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
