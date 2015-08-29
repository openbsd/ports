# $OpenBSD: Makefile,v 1.25 2015/08/29 14:48:34 jasper Exp $

COMMENT =	embeddable common-lisp
CATEGORIES =	lang

BROKEN-sparc =	infinite loop while building
BROKEN-arm =	infinite loop while building

V =		16.0.0
DISTNAME =	ecl-$V
SHARED_LIBS +=	ecl	4.0
SHARED_ONLY =	Yes

HOMEPAGE =	https://common-lisp.net/project/ecl/

SUBST_VARS =	V
EXTRACT_SUFX =	.tgz

# GPLv2 or later
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}files/

CONFIGURE_STYLE =	gnu
TEST_TARGET =		check
CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include \
			ECLLIB_VERSION=${LIBecl_VERSION} \
			ecldir=${LOCALBASE}/lib/ecl

CONFIGURE_ARGS +=	--enable-boehm=system \
			--enable-libatomic=system \
			--with-system-gmp \
			--with-gmp-prefix=${LOCALBASE}

# etags gets picked up if it's install, and dumps core while
# generating the tags. so override it for now untill etags is fixed.
CONFIGURE_ENV +=	ETAGS=/usr/bin/true

WANTLIB +=	atomic_ops c ffi gc gmp m pthread

LIB_DEPENDS +=	devel/gmp \
		devel/boehm-gc,-main \
		devel/boehm-gc,-atomic \
		devel/libffi

TEST_DEPENDS =	${BASE_PKGPATH}

.include <bsd.port.mk>
