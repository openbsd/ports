COMMENT-main=	garbage collection and memory leak detection for C and C++
COMMENT-atomic=	access to hardware provided atomic memory operations

VERSION=	8.2.4
LIBAO_VERSION=	7.8.0

# has various machine-dependent parts; updates definitely need
# tests on more than just amd64.

DISTNAME=	gc-${VERSION}

PKGNAME-atomic=	libatomic_ops-${LIBAO_VERSION}
PKGNAME-main=	boehm-gc-${VERSION}

DISTFILES.lib = libatomic_ops-${LIBAO_VERSION}${EXTRACT_SUFX}

MULTI_PACKAGES=	-main -atomic
DEBUG_PACKAGES=	${BUILD_PACKAGES}

SHARED_LIBS +=	gc		6.0	# 6.2
SHARED_LIBS +=	gccpp		1.0	# 5.0
SHARED_LIBS +=	gctba		0.0	# 5.0
SHARED_LIBS +=	cord		3.0	# 6.0
SHARED_LIBS +=	atomic_ops	3.0	# 3.0
SHARED_LIBS +=	atomic_ops_gpl	3.0	# 3.0

CATEGORIES=	devel

SITES=		https://github.com/ivmai/bdwgc/releases/download/v${VERSION}/
SITES.lib=	https://github.com/ivmai/libatomic_ops/releases/download/v${LIBAO_VERSION}/

HOMEPAGE=	https://hboehm.info/gc/

# currently works only on most ELF archs
NOT_FOR_ARCHS=	m88k

# HP MIT-like license
PERMIT_PACKAGE=	Yes

WANTLIB-main +=	m pthread ${COMPILER_LIBCXX}

COMPILER =	base-clang ports-gcc base-gcc

MAKE_ENV=	CP="cp" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_MAN="${INSTALL_MAN}"

CONFIGURE_STYLE= gnu

CONFIGURE_ARGS= --with-libatomic-ops=no \
		--enable-cplusplus \
		--enable-threads=pthreads \
		--enable-mmap \
		--enable-static=yes

.if ${MACHINE_ARCH} == "arm"
# Needs unwind symbols.  We use MAKE_FLAGS because configure.ac doesn't respect
# UNWINDLIBS passed in CONFIGURE_ENV.
MAKE_FLAGS +=	UNWINDLIBS="-lc++abi"
.endif

post-extract:
	@perl -pi -e "s,/usr/local,${PREFIX},g" ${WRKSRC}/doc/gc.man
	@mv ${WRKDIR}/libatomic_ops-${LIBAO_VERSION} ${WRKBUILD}/libatomic_ops

pre-build:
# clean distributed objects and libs and rebuild
	@cd ${WRKBUILD}/libatomic_ops && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} clean all

post-install:
	@cd ${WRKBUILD}/libatomic_ops && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} install
	${INSTALL_DATA} ${WRKSRC}/doc/gc.man ${PREFIX}/man/man3/gc.3

.include <bsd.port.mk>
