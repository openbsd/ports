COMMENT-main=	garbage collection and memory leak detection for C and C++
COMMENT-atomic=	access to hardware provided atomic memory operations

VERSION=	8.0.4
LIBAO_VERSION=	7.6.10
# has various machine-dependent parts; updates definitely need
# tests on more than just amd64.

DISTNAME=	gc-${VERSION}

PKGNAME-atomic=	libatomic_ops-${LIBAO_VERSION}
PKGNAME-main=	boehm-gc-${VERSION}

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		libatomic_ops-${LIBAO_VERSION}${EXTRACT_SUFX}

MULTI_PACKAGES=	-main -atomic
DEBUG_PACKAGES=	${BUILD_PACKAGES}

SHARED_LIBS +=	gc		5.0	# 5.3
SHARED_LIBS +=	gccpp		1.0	# 5.0
SHARED_LIBS +=	cord		3.0	# 5.0
SHARED_LIBS +=  atomic_ops	3.0	# 2.1
SHARED_LIBS +=  atomic_ops_gpl	3.0	# 2.2

CATEGORIES=	devel

MASTER_SITES=	https://hboehm.info/gc/gc_source/

HOMEPAGE=	https://hboehm.info/gc/

# currently works only on most ELF archs
NOT_FOR_ARCHS=	m88k

PERMIT_PACKAGE=	Yes

WANTLIB-main += m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MAKE_ENV=	CP="cp" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_MAN="${INSTALL_MAN}"

CONFIGURE_STYLE= gnu

CONFIGURE_ARGS= --with-libatomic-ops=no \
		--enable-cplusplus \
		--enable-threads=pthreads \
		--enable-mmap \
		--enable-static=yes

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
