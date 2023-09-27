COMMENT=	statistics utility

DISTNAME=	ministat-0.0.20211218
REVISION=	0

CATEGORIES=	math

HOMEPAGE=	https://cgit.freebsd.org/src/tree/usr.bin/ministat

# Beerware license
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB=	c m

SITES=		https://people.freebsd.org/~misha/
NO_TEST=	Yes
# needs -lm for gcc archs
MAKE_FLAGS=	CFLAGS="${CFLAGS} -lm"
FAKE_FLAGS=	PREFIX="${TRUEPREFIX}"

EXAMPLES=	${PREFIX}/share/examples/ministat

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/{iguana,chameleon} ${EXAMPLES}

.include <bsd.port.mk>
