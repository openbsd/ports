# $OpenBSD: Makefile,v 1.1.1.1 2016/05/21 01:08:26 czarkoff Exp $

COMMENT =	Go supplementary cryptography libraries
DISTNAME =	go-crypto-20160510
GH_ACCOUNT =	golang
GH_PROJECT =	crypto
GH_COMMIT =	b76c864ef1dca1d8f271f917c290cddcce3d9e0d
CATEGORIES =	security devel

HOMEPAGE =	https://godoc.org/golang.org/x/crypto

MAINTAINER =	Dmitrij D. Czarkoff <czarkoff@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM = Yes

WANTLIB =	c pthread

MODULES =	lang/go

MODGO_TYPE =	lib

_MAIN =		golang.org/x/crypto
_SUBPKGS =	bcrypt blowfish bn256 cast5 curve25519 ed25519 \
		ed25519/internal/edwards25519 hkdf md4 nacl/box \
		nacl/secretbox ocsp openpgp openpgp/armor openpgp/clearsign \
		openpgp/elgamal openpgp/errors openpgp/packet openpgp/s2k otr \
		pbkdf2 pkcs12 pkcs12/internal/rc2 poly1305 ripemd160 salsa20 \
		salsa20/salsa scrypt sha3 ssh ssh/agent ssh/terminal ssh/test \
		tea twofish xtea xts
ALL_TARGET =	${_SUBPKGS:%=${_MAIN}/%}
WRKSRC =	${MODGO_WORKSPACE}/src/${_MAIN}

.include <bsd.port.mk>
