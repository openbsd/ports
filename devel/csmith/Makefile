# $OpenBSD: Makefile,v 1.11 2020/03/10 03:31:45 daniel Exp $

COMMENT=	fuzzer for C compilers

DISTNAME=	csmith-2.3.0
REVISION=	1

CATEGORIES=	devel

# BSD
PERMIT_PACKAGE=	Yes

SHARED_LIBS +=  csmith                    0.0 # 0.0

WANTLIB+=	c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

HOMEPAGE=	https://embed.cs.utah.edu/csmith/
MASTER_SITES=	https://embed.cs.utah.edu/csmith/

CONFIGURE_STYLE=gnu

USE_GMAKE=	Yes
NO_TEST=	Yes

pre-install:
	${SUBST_CMD} ${WRKSRC}/scripts/compiler_test.pl

post-install:
	mv ${PREFIX}/bin/compiler_test.in ${PREFIX}/share/examples/csmith.conf
	rm -f ${PREFIX}/bin/launchn.pl
	rm -f ${PREFIX}/bin/test_csmith.pl

.include <bsd.port.mk>
