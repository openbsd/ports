# $OpenBSD: Makefile,v 1.10 2018/10/24 14:27:57 sthen Exp $

COMMENT=	unpack Inno Setup installers

DISTNAME=	innoextract-1.7
REVISION=	0

CATEGORIES=	archivers
HOMEPAGE=	https://constexpr.org/innoextract/

MASTER_SITES=	${HOMEPAGE}files/

MAINTAINER=	Donovan Watteau <tsoomi@gmail.com>

# zlib/libpng
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	boost_filesystem-mt boost_iostreams-mt boost_program_options-mt
WANTLIB+=	c iconv lzma m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	archivers/xz \
		converters/libiconv \
		devel/boost>=1.53.0p6

RUN_DEPENDS=	archivers/unrar

MODULES=	devel/cmake

SEPARATE_BUILD=	Yes

CXXFLAGS+=	-D_LIBCPP_ENABLE_CXX17_REMOVED_AUTO_PTR -Wno-system-headers
CONFIGURE_ARGS+=-DCMAKE_INSTALL_PREFIX="${PREFIX}" \
		-DCMAKE_INSTALL_MANDIR="man" \
		-DDOXYGEN_EXECUTABLE="false"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/innoextract ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/innoextract.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
