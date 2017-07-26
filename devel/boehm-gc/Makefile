# $OpenBSD: Makefile,v 1.67 2017/07/26 22:45:17 sthen Exp $

COMMENT-main=	garbage collection and memory leak detection for C and C++
COMMENT-atomic=	access to hardware provided atomic memory operations

VERSION=	7.6.0
LIBAO_VERSION=	7.4.4

DISTNAME=	gc-${VERSION}

PKGNAME-atomic=	libatomic_ops-${LIBAO_VERSION}
PKGNAME-main=	boehm-gc-${VERSION}
REVISION-main=	1
REVISION-atomic=0

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		libatomic_ops-${LIBAO_VERSION}${EXTRACT_SUFX}

MULTI_PACKAGES=	-main -atomic

SHARED_LIBS +=	gc		4.0	# 1.3
SHARED_LIBS +=	gccpp		0.0	# 1.3
SHARED_LIBS +=	cord		2.3	# 1.3
SHARED_LIBS +=  atomic_ops	1.3 	# 1.3
SHARED_LIBS +=  atomic_ops_gpl	1.3 	# 1.3

CATEGORIES=	devel

MASTER_SITES=	${HOMEPAGE}gc_source/

HOMEPAGE=	http://hboehm.info/gc/

# currently works only on most ELF archs
NOT_FOR_ARCHS=	m88k

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB-main += m pthread ${COMPILER_LIBCXX}

MAKE_ENV=	CP="cp" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_MAN="${INSTALL_MAN}"

CONFIGURE_STYLE= gnu

CONFIGURE_ARGS= --with-libatomic-ops=no \
		--enable-cplusplus \
		--enable-threads=pthreads

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
