# $OpenBSD: Makefile,v 1.56 2014/07/09 14:31:10 robert Exp $

COMMENT-main=	garbage collection and memory leak detection for C and C++
COMMENT-atomic=	access to hardware provided atomic memory operations

VERSION=	7.4.2
LIBAO_VERSION=	7.4.0

DISTNAME=	gc-${VERSION}

PKGNAME-atomic=	libatomic_ops-${LIBAO_VERSION}
PKGNAME-main=	boehm-gc-${VERSION}

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
NOT_FOR_ARCHS=	m88k vax mips64 mips64el

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB-main += m pthread stdc++

MAKE_ENV=	CP="cp" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_MAN="${INSTALL_MAN}"


AUTOCONF_VERSION= 2.68
CONFIGURE_STYLE= autoconf no-autoheader

CONFIGURE_ARGS= ${CONFIGURE_SHARED} \
		--with-libatomic-ops=no \
		--enable-cplusplus \
		--enable-threads=pthreads

pre-configure:
	@perl -pi -e "s,/usr/local,${PREFIX},g" ${WRKSRC}/doc/gc.man
	@mv ${WRKDIR}/libatomic_ops-${LIBAO_VERSION} ${WRKBUILD}/libatomic_ops

# clean distributed objects and libs and rebuild
pre-build:
	@cd ${WRKBUILD}/libatomic_ops && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} clean all

aliases=	malloc malloc_atomic free realloc enable_incremental \
		register_finalizer malloc_ignore_off_page \
		malloc_atomic_ignore_off_page set_warn_proc

post-install:
	@cd ${WRKBUILD}/libatomic_ops && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} install
	${INSTALL_DATA} ${WRKSRC}/doc/gc.man ${PREFIX}/man/man3/gc.3
.for i in ${aliases}
	ln -s gc.3 ${PREFIX}/man/man3/GC_$i.3
.endfor

.include <bsd.port.mk>
