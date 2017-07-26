# $OpenBSD: Makefile,v 1.7 2017/07/26 22:45:17 sthen Exp $

COMMENT=	fuzzer for C compilers

DISTNAME=	csmith-2.2.0
REVISION =	2

CATEGORIES=	devel

MAINTAINER=	Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

SHARED_LIBS +=  csmith                    0.0 # 0.0

WANTLIB+=	c m ${COMPILER_LIBCXX}

HOMEPAGE=	http://embed.cs.utah.edu/csmith/
MASTER_SITES=	http://embed.cs.utah.edu/csmith/

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
