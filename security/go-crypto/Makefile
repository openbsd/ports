# $OpenBSD: Makefile,v 1.3 2016/08/21 14:21:55 czarkoff Exp $

COMMENT =	Go supplementary cryptography libraries
DISTNAME =	go-crypto-20160821
GH_ACCOUNT =	golang
GH_PROJECT =	crypto
GH_COMMIT =	b3cc7317554b3e708b116d997899e612bab100d6
CATEGORIES =	security devel

HOMEPAGE =	https://godoc.org/golang.org/x/crypto

MAINTAINER =	Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM = Yes

WANTLIB =	c pthread

MODULES =	lang/go

MODGO_TYPE =	lib

_MAIN =		golang.org/x/crypto
_SUBPKGS =	bcrypt \
		blowfish \
		bn256 \
		cast5 \
		curve25519 \
		ed25519 \
		ed25519/internal/edwards25519 \
		hkdf \
		md4 \
		nacl/box \
		nacl/secretbox \
		ocsp \
		openpgp \
		openpgp/armor \
		openpgp/clearsign \
		openpgp/elgamal \
		openpgp/errors \
		openpgp/packet \
		openpgp/s2k \
		otr \
		pbkdf2 \
		pkcs12 \
		pkcs12/internal/rc2 \
		poly1305 \
		ripemd160 \
		salsa20 \
		salsa20/salsa \
		scrypt \
		sha3 \
		ssh \
		ssh/agent \
		ssh/terminal \
		ssh/test \
		tea \
		twofish \
		xtea \
		xts
ALL_TARGET =	${_SUBPKGS:%=${_MAIN}/%}
WRKSRC =	${MODGO_WORKSPACE}/src/${_MAIN}

.include <bsd.port.mk>
