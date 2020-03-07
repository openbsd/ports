# $OpenBSD: Makefile,v 1.15 2020/03/07 17:48:59 thfr Exp $

COMMENT=	unpack Inno Setup installers

DISTNAME=	innoextract-1.8

CATEGORIES=	archivers
HOMEPAGE=	https://constexpr.org/innoextract/
MAINTAINER=	Thomas Frohwein <thfr@openbsd.org>

# zlib/libpng
PERMIT_PACKAGE=	Yes

# pthread req'd by lzma and boost at runtime
# boost_system-mt req'd by boost_filesystem-mt at runtime
WANTLIB=	boost_filesystem-mt boost_iostreams-mt boost_program_options-mt
WANTLIB+=	boost_system-mt c iconv lzma m pthread ${COMPILER_LIBCXX}

MASTER_SITES =	${HOMEPAGE}files/

# C++17
COMPILER=	base-clang ports-gcc

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
