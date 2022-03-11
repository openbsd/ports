COMMENT =	command-line encryption using scrypt key derivation function

DISTNAME =	scrypt-1.3.1

SHARED_LIBS +=	scrypt-kdf                0.0 # 1.0

CATEGORIES =	security

HOMEPAGE =	https://www.tarsnap.com/scrypt/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	c crypto

MASTER_SITES =	${HOMEPAGE}
EXTRACT_SUFX =	.tgz

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-libscrypt-kdf

DEBUG_PACKAGES =	${BUILD_PACKAGES}

TEST_TARGET =	test

.include <bsd.port.mk>
