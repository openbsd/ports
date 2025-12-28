COMMENT=	source code documentation generator tool

VERSION=	1.15.0
DISTNAME=	doxygen-${VERSION}.src
PKGNAME=	doxygen-${VERSION}

CATEGORIES=	devel textproc

HOMEPAGE=	https://www.doxygen.org/

MAINTAINER=	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c fmt iconv m spdlog sqlite3 xapian
WANTLIB += z

# C++20
COMPILER =	base-clang ports-gcc

SITES=		https://doxygen.nl/files/

MODULES=	devel/cmake \
		lang/python

MODPY_RUNDEP=	No

LIB_DEPENDS=	converters/libiconv \
		databases/sqlite3 \
		databases/xapian-core \
		devel/fmt \
		devel/spdlog


BUILD_DEPENDS=	devel/bison \
		devel/git

RUN_DEPENDS=	print/ghostscript/gnu \
		math/graphviz

CONFIGURE_ARGS=		-Dbuild_doc=ON \
			-Dbuild_app=ON \
			-Dbuild_search=ON

CONFIGURE_ARGS+=	-DCMAKE_DISABLE_FIND_PACKAGE_Javacc=ON

CONFIGURE_ARGS+=	-Duse_sys_fmt=ON \
			-Duse_sys_spdlog=ON \
			-Duse_sys_sqlite3=ON

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
CXXFLAGS+=	-mxgot
.endif

WRKDIST=	${WRKDIR}/doxygen-${VERSION}

.include <bsd.port.mk>
