COMMENT=	fuzzer for C compilers

GH_ACCOUNT=	csmith-project
GH_PROJECT=	csmith
GH_COMMIT=	0cdc710315cfee9035e22ef4363ca479270d1934

DISTNAME=	csmith-2.4.0
PKGNAME=	csmith-2.4.0

CATEGORIES=	devel

HOMEPAGE=	https://embed.cs.utah.edu/csmith/

MAINTAINER=	Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

SHARED_LIBS +=  csmith                    0.0 # 0.0

WANTLIB+=	c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES =	devel/cmake

NO_TEST=	Yes

pre-install:
	${SUBST_CMD} ${WRKSRC}/scripts/compiler_test.pl

post-install:
	mv ${PREFIX}/bin/compiler_test.in ${PREFIX}/share/examples/csmith.conf
	rm -f ${PREFIX}/bin/launchn.pl
	rm -f ${PREFIX}/bin/test_csmith.pl

.include <bsd.port.mk>
