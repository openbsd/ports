# $OpenBSD: Makefile,v 1.36 2008/04/01 17:41:13 kurt Exp $
# $FreeBSD: Makefile,v 1.4 1999/01/10 20:12:06 steve Exp $

COMMENT=	garbage collection and memory leak detection for C and C++

VERSION=	7.0
DISTNAME=	gc-${VERSION}
PKGNAME=	boehm-gc-${VERSION}p0

SHARED_LIBS +=	gc	3.0	# .1.2
SHARED_LIBS +=  cord	2.3	# .1.3

CATEGORIES=	devel

MASTER_SITES=	${HOMEPAGE}gc_source/

HOMEPAGE=	http://www.hpl.hp.com/personal/Hans_Boehm/gc/

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

# currently works only on most ELF archs
NOT_FOR_ARCHS=	m68k m88k vax mips64

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

aliases=	malloc malloc_atomic free realloc enable_incremental \
		register_finalizer malloc_ignore_off_page \
		malloc_atomic_ignore_off_page set_warn_proc

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/gc.man ${PREFIX}/man/man3/gc.3
.for i in ${aliases}
	ln -s gc.3 ${PREFIX}/man/man3/GC_$i.3
.endfor

.include <bsd.port.mk>
