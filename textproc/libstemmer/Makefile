COMMENT=	stemming algorithms for text processing

# distfile at https://snowballstem.org/dist/ doesn't have mkalgorithms.pl
GH_ACCOUNT=	snowballstem
GH_PROJECT=	snowball
GH_TAGNAME=	v2.1.0
PKGNAME=	${DISTNAME:S/snowball/libstemmer/}

SHARED_LIBS=	stemmer	0.0

CATEGORIES=	textproc

HOMEPAGE=	https://snowballstem.org/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c

MAKE_FLAGS=	CC="${CC}" \
		COPTS="${CFLAGS}" \
		LIBstemmer_VERSION="${LIBstemmer_VERSION}"
USE_GMAKE=	Yes
MAKE_FILE=	GNUmakefile

# others under "check" but others fail "No rule to make target 'check_XXX'"
TEST_TARGET=	check_stemtest

# not installing the snowball compiler yet, but it could be added if needed.
do-install:
	${INSTALL_DATA} ${WRKSRC}/include/libstemmer.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/libstemmer.so.* ${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKSRC}/stemwords ${PREFIX}/bin

.include <bsd.port.mk>
