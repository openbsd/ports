COMMENT =	C implementation of Argon2 - password hashing function

# GH_TAGNAME used in MAKE_FLAGS
GH_ACCOUNT =	P-H-C
GH_PROJECT =	phc-winner-argon2
GH_TAGNAME =	20190702
DISTNAME =	argon2-${GH_TAGNAME}
REVISION =	0

SHARED_LIBS +=	argon2                   0.0 # 0.0

CATEGORIES =	security

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# CC0 License or the Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MAKE_FLAGS =		CC="$(CC)" INSTALL="$(INSTALL)" OPTTARGET=none \
			PREFIX="${TRUEPREFIX}" ABI_VERSION="${LIBargon2_VERSION}" \
			ARGON2_VERSION="${GH_TAGNAME}"
TEST_FLAGS =		OPTTARGET=none

USE_GMAKE =		Yes

TEST_TARGET =		test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/argon2
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,README.md,argon2-specs.pdf} \
		${PREFIX}/share/doc/argon2/
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKBUILD}/libargon2.pc ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
