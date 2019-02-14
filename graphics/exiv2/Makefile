# $OpenBSD: Makefile,v 1.29 2019/02/14 09:55:40 jca Exp $

COMMENT=	manipulate image meta-data such as exif and ipct

DISTNAME=	exiv2-0.27.0-Source
PKGNAME=	exiv2-0.27.0
CATEGORIES=	graphics devel

SHARED_LIBS +=  exiv2                10.0      # 14.0

HOMEPAGE=	http://www.exiv2.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} c expat iconv intl m z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	http://www.exiv2.org/builds/

MODULES=	devel/cmake

CFLAGS +=	-I${LOCALBASE}/include
CXXFLAGS +=	-I${LOCALBASE}/include

BUILD_DEPENDS=	devel/gettext-tools \
		devel/gtest

LIB_DEPENDS=	devel/gettext

TEST_DEPENDS=	converters/dos2unix \
		shells/bash

CONFIGURE_ARGS += -DEXIV2_BUILD_UNIT_TESTS=ON
CONFIGURE_ARGS += -DEXIV2_BUILD_PO=ON

TEST_TARGET =	tests

# dos line-endings in file needing patch
post-extract:
	@cd ${WRKSRC} && perl -i -pe 's/\r$$//' ${WRKSRC}/cmake/compilerFlags.cmake

post-install:
	find ${WRKINST} -name '._*' -delete
	rm ${PREFIX}/include/exiv2/*.orig
	rm ${PREFIX}/lib/libxmp.a

pre-test:
	@sed -Ei 's,!/bin/(ba)?sh,!/usr/bin/env bash,g' ${WRKSRC}/test/*.sh

.include <bsd.port.mk>
