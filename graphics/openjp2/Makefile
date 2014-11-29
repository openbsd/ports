# $OpenBSD: Makefile,v 1.4 2014/11/29 13:25:05 sthen Exp $

COMMENT =		open-source JPEG 2000 codec library

V =			2.1.0
DISTNAME =		openjpeg-$V
PKGNAME =		openjp2-$V

SHARED_LIBS +=	openjp2                   1.0 # 2.0

CATEGORIES =		graphics

HOMEPAGE =		http://www.openjpeg.org/

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c lcms2 m png pthread tiff z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=openjpeg.mirror/}

MODULES =		devel/cmake
CONFIGURE_ARGS =	-DOPENJPEG_INSTALL_MAN_DIR=man \
			-DOPENJPEG_INSTALL_SUBDIR:STRING=openjp2 \
			-DOPENJPEG_SOVERSION:STRING=${LIBopenjpeg_VERSION}

LIB_DEPENDS =		graphics/lcms2 \
			graphics/png


pre-patch:
	cd ${WRKSRC}/src/lib && perl -i -pe 's/\r$$//; s/\t*$$//;' openmj2/opj_malloc.h openjp2/opj_malloc.h

post-install:
	cd ${WRKSRC}/doc/man; \
	       ${INSTALL_DATA} man1/* ${PREFIX}/man/man1/; \
	       ${INSTALL_DATA} man3/* ${PREFIX}/man/man3/

.include <bsd.port.mk>
