# $OpenBSD: Makefile,v 1.2 2015/08/05 22:49:59 tobiasu Exp $

COMMENT=	fuzzer for C compilers

DISTNAME=	csmith-2.2.0
REVISION=	0

CATEGORIES=	devel

MAINTAINER=	Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

SHARED_LIBS +=  csmith                    0.0 # 0.0

WANTLIB+=	c m stdc++

HOMEPAGE=	http://embed.cs.utah.edu/csmith/
MASTER_SITES=	http://embed.cs.utah.edu/csmith/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS = ${CONFIGURE_SHARED}

USE_GMAKE=	Yes
NO_TEST=	Yes

pre-install:
	${SUBST_CMD} ${WRKSRC}/scripts/compiler_test.pl

post-install:
	mv ${PREFIX}/bin/compiler_test.in ${PREFIX}/share/examples/csmith.conf
	rm -f ${PREFIX}/bin/launchn.pl
	rm -f ${PREFIX}/bin/test_csmith.pl

.include <bsd.port.mk>
