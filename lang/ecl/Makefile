# $OpenBSD: Makefile,v 1.23 2014/07/11 13:10:53 ajacoutot Exp $

COMMENT =	embeddable common-lisp
CATEGORIES =	lang

BROKEN-sparc =	infinite loop while building
BROKEN-arm =	infinite loop while building

V =		13.5.1
DISTNAME =	ecl-$V
SHARED_LIBS +=	ecl	3.0
SHARED_ONLY =	Yes

REVISION =	1

HOMEPAGE =	http://ecls.sourceforge.net/
SUBST_VARS =	V
EXTRACT_SUFX =	.tgz

# GPLv2 or later
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ecls/}

CONFIGURE_STYLE =	gnu
TEST_TARGET =		check
CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include \
			ECLLIB_VERSION=${LIBecl_VERSION}
FLAVORS =		debug
FLAVOR ?=

CONFIGURE_ARGS +=	--enable-boehm=system \
			--enable-libatomic=system \
			--enable-threads=pthreads \
			--with-system-gmp \
			--with-gmp-prefix=${LOCALBASE}

# etags gets picked up if it's install, and dumps core while
# generating the tags. so override it for now untill etags is fixed.
CONFIGURE_ENV +=	ETAGS=/usr/bin/true

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	--with-debug-cflags=-g
.endif

LIB_DEPENDS +=	devel/gmp \
		devel/boehm-gc,-main \
		devel/boehm-gc,-atomic \
		devel/libffi

WANTLIB +=	atomic_ops c ffi gc gmp m pthread

.include <bsd.port.mk>
