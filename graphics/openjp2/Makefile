# $OpenBSD: Makefile,v 1.10 2018/03/17 22:03:23 sthen Exp $

COMMENT =	open-source JPEG 2000 codec library

GH_ACCOUNT =	uclouvain
GH_PROJECT =	openjpeg
V =		2.3.0
GH_TAGNAME =	v$V
PORTROACH =	skipv:$V
DISTNAME =	openjp2-$V

SHARED_LIBS +=	openjp2                   3.1

CATEGORIES =	graphics

HOMEPAGE =	http://www.openjpeg.org/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c lcms2 m png pthread tiff z

MODULES =	devel/cmake
CONFIGURE_ARGS = -DOPENJPEG_INSTALL_MAN_DIR=man \
		-DOPENJPEG_INSTALL_SUBDIR=openjp2 \
		-DOPJ_DATA_ROOT=${WRKDIR}/data \
		-DBUILD_TESTING=True
MASTER_SITES0 =	https://github.com/uclouvain/openjpeg-data/archive/

LIB_DEPENDS =	graphics/lcms2 \
		graphics/png

post-install:
	cd ${WRKSRC}/doc/man; \
	       ${INSTALL_DATA} man1/* ${PREFIX}/man/man1/; \
	       ${INSTALL_DATA} man3/* ${PREFIX}/man/man3/

pre-test:
	@if [ ! -d ${WRKDIR}/data ]; then printf "\nTests require a checkout of https://github.com/uclouvain/openjpeg-data\nin ${WRKDIR}/data (approx 500MB).\n\n"; exit 1; fi

.include <bsd.port.mk>
