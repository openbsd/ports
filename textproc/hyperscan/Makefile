ONLY_FOR_ARCHS=	amd64

COMMENT=	high-performance regular expression matching library

GH_ACCOUNT=	intel
GH_PROJECT=	hyperscan
GH_TAGNAME=	v5.4.0

SHARED_LIBS += hs		0.0
SHARED_LIBS += hs_runtime	0.0

CATEGORIES=	textproc

HOMEPAGE=	https://www.hyperscan.io/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c m pcap sqlite3

COMPILER=	base-clang ports-gcc

FLAVORS=	native ssse3 sse4_2 avx2
FLAVOR?=	ssse3

MODULES=	devel/cmake \
		lang/python
MODPY_RUNDEP=	No
BUILD_DEPENDS=	devel/boost \
		devel/ragel
LIB_DEPENDS=	databases/sqlite3
CONFIGURE_ARGS=	-DBUILD_SHARED_LIBS=ON \
		-DOPTIMISE=OFF

.if ${FLAVOR} == ssse3
M=		-march=core2
.elif ${FLAVOR} == sse4_2
M=		-march=corei7
.elif ${FLAVOR} == avx2
M=		-march=core-avx2
.elif ${FLAVOR} != native
ERRORS+=	Fatal: only one FLAVOR may be set
.endif
CFLAGS+=	$M
CXXFLAGS+=	$M

post-install:
	cd ${PREFIX}/share; mv doc/hyperscan/examples examples/hyperscan
	rmdir ${PREFIX}/share/doc/hyperscan
.for p in hsbench hscheck patbench pcapscan simplegrep
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/$p ${PREFIX}/bin/
.endfor

do-test:
	${WRKBUILD}/bin/unit-hyperscan

.include <bsd.port.mk>
