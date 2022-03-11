COMMENT=	unpack Inno Setup installers

DISTNAME=	innoextract-1.9
REVISION=	2
CATEGORIES=	archivers
HOMEPAGE=	https://constexpr.org/innoextract/
MAINTAINER=	Thomas Frohwein <thfr@openbsd.org>

# zlib/libpng
PERMIT_PACKAGE=	Yes

# pthread req'd by lzma and boost at runtime
# boost_system-mt req'd by boost_filesystem-mt at runtime
WANTLIB=	boost_filesystem-mt boost_iostreams-mt boost_program_options-mt
WANTLIB+=	c iconv lzma m ${COMPILER_LIBCXX}

MASTER_SITES =	${HOMEPAGE}files/

# C++17
COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	archivers/xz \
		converters/libiconv \
		devel/boost

RUN_DEPENDS=	archivers/unrar

MODULES=	devel/cmake

SEPARATE_BUILD=	Yes

CXXFLAGS+=	-Wno-system-headers
CONFIGURE_ARGS+=-DCMAKE_INSTALL_PREFIX="${PREFIX}" \
		-DCMAKE_INSTALL_MANDIR="man" \
		-DDOXYGEN_EXECUTABLE="false"

NO_TEST=	Yes

.include <bsd.port.arch.mk>

# The std::unique_ptr configure test fails on ld.bfd archs using base-clang due
# to undefined references caused by the `--as-needed' linker flag. A fallback
# exists, using std::auto_ptr, but it has been disabled by C++17, thus breaking
# the build later. Use the same code as other archs instead of reenabling
# std::auto_ptr by removing the `--as-needed' linker flags to fix the build.
.if ${PROPERTIES:Mclang} && !${PROPERTIES:Mlld}
CONFIGURE_ARGS+=	-DSET_OPTIMIZATION_FLAGS=OFF
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/innoextract ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/innoextract.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
