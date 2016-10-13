# $OpenBSD: Makefile,v 1.31 2016/10/13 15:14:29 jca Exp $

COMMENT =	embeddable common-lisp
CATEGORIES =	lang

BROKEN-mips64 =	ecl_min fails
BROKEN-arm =	infinite loop while building

V =		16.1.2
DISTNAME =	ecl-$V
SHARED_LIBS +=	ecl	5.0

HOMEPAGE =	https://common-lisp.net/project/ecl/

SUBST_VARS =	V
EXTRACT_SUFX =	.tgz

# GPLv2 or later
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}static/files/release/

CONFIGURE_STYLE =	gnu
TEST_TARGET =		check
CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include \
			ECLLIB_VERSION=${LIBecl_VERSION} \
			ecldir=${LOCALBASE}/lib/ecl

CONFIGURE_ARGS +=	--enable-boehm=system \
			--enable-libatomic=system \
			--with-system-gmp \
			--with-gmp-prefix=${LOCALBASE}

# etags gets picked up if it's installed, and dumps core while
# generating the tags. so override it for now untill etags is fixed.
CONFIGURE_ENV +=	ETAGS=/usr/bin/true

WANTLIB +=	atomic_ops c ffi gc gmp m pthread

LIB_DEPENDS +=	devel/gmp \
		devel/boehm-gc,-main \
		devel/boehm-gc,-atomic \
		devel/libffi

TEST_DEPENDS =	${BASE_PKGPATH}

# XXX: Workaround for missing Copyright file
post-configure:
	@cp ${WRKSRC}/{LICENSE,Copyright}

.include <bsd.port.mk>
