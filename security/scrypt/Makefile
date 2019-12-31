# $OpenBSD: Makefile,v 1.10 2019/12/31 07:26:59 bket Exp $

COMMENT =	command-line encryption using scrypt key derivation function

DISTNAME =	scrypt-1.3.0

SHARED_LIBS +=	scrypt-kdf                0.0 # 1.0

CATEGORIES =	security

HOMEPAGE =	https://www.tarsnap.com/scrypt/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	c crypto

MASTER_SITES =	${HOMEPAGE}
EXTRACT_SUFX =	.tgz

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-libscrypt-kdf

DEBUG_PACKAGES =	${BUILD_PACKAGES}

TEST_TARGET =	test

.include <bsd.port.mk>
