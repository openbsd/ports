# $OpenBSD: Makefile,v 1.39 2010/02/09 12:18:45 jasper Exp $
# $FreeBSD: Makefile,v 1.4 1999/01/10 20:12:06 steve Exp $

COMMENT-main=	garbage collection and memory leak detection for C and C++
COMMENT-atomic=	access to hardware provided atomic memory operations

VERSION=	7.0
DISTNAME=	gc-${VERSION}
PKGNAME-atomic=	libatomic_ops-1.2
PKGNAME-main=	boehm-gc-${VERSION}p2

MULTI_PACKAGES=	-main -atomic

SHARED_LIBS +=	gc	3.0	# .1.2
SHARED_LIBS +=  cord	2.3	# .1.3

CATEGORIES=	devel

MASTER_SITES=	${HOMEPAGE}gc_source/

HOMEPAGE=	http://www.hpl.hp.com/personal/Hans_Boehm/gc/

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

# currently works only on most ELF archs
NOT_FOR_ARCHS=	m68k m88k vax mips64 mips64el

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	CP="cp" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_MAN="${INSTALL_MAN}"

USE_LIBTOOL=	Yes

AUTOCONF_VERSION= 2.61
CONFIGURE_STYLE= autoconf no-autoheader

CONFIGURE_ARGS= ${CONFIGURE_SHARED} \
		--enable-threads=pthreads

pre-configure:
	@perl -pi -e "s,/usr/local,${PREFIX},g" ${WRKSRC}/doc/gc.man

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
