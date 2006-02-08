# $OpenBSD: Makefile,v 1.32 2006/02/08 04:54:49 david Exp $
# $FreeBSD: Makefile,v 1.4 1999/01/10 20:12:06 steve Exp $

COMMENT=	"garbage collection and memory leak detection for C and C++"

VERSION=	6.2
DISTNAME=	gc${VERSION}
PKGNAME=	boehm-gc-${VERSION}p1
SHARED_LIBS=	gc 1.2

CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}gc_source/

HOMEPAGE=	http://www.hpl.hp.com/personal/Hans_Boehm/gc/

MAINTAINER=	Todd T. Fries <todd@openbsd.org>


NOT_FOR_ARCHS=	hppa powerpc vax

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	CP="cp" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_MAN="${INSTALL_MAN}"

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=autoconf no-autoheader
AUTOCONF_VERSION=2.54
CONFIGURE_ARGS= ${CONFIGURE_SHARED} --enable-full-debug

# XXX the below causes failures still
#	--enable-redirect-malloc 

WRKDIST=	${WRKDIR}/gc${VERSION}

pre-configure:
	@mv ${WRKSRC}/doc/gc.man ${WRKSRC}/doc/gc.man.in
	@sed -e "s,@PREFIX@,${PREFIX},g" ${WRKSRC}/doc/gc.man.in > \
		${WRKSRC}/doc/gc.man

aliases=	malloc malloc_atomic free realloc enable_incremental \
		register_finalizer malloc_ignore_off_page \
		malloc_atomic_ignore_off_page set_warn_proc
post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/gc.man ${PREFIX}/man/man3/gc.3
.for i in ${aliases}
	ln -s gc.3 ${PREFIX}/man/man3/GC_$i.3
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/include/private
	${INSTALL_DATA} ${WRKSRC}/include/gc{,_{cpp,backptr,gcj,mark,typed}}.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/include/private/gc{config,_{hdrs,locks,priv,pmark}}.h ${PREFIX}/include/private

REGRESS_TARGET=	check-TESTS

.include <bsd.port.mk>
