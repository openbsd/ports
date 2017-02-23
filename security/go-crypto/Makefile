# $OpenBSD: Makefile,v 1.4 2017/02/23 16:01:09 jsing Exp $

COMMENT =	Go supplementary cryptography libraries
DISTNAME =	go-crypto-20170201
GH_ACCOUNT =	golang
GH_PROJECT =	crypto
GH_COMMIT =	dc137beb6cce2043eb6b5f223ab8bf51c32459f4
CATEGORIES =	security devel

HOMEPAGE =	https://godoc.org/golang.org/x/crypto

MAINTAINER =	Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM = Yes

WANTLIB =	c pthread

MODULES =	lang/go

MODGO_TYPE =	lib

# The acme and acme\autocert packages are not currently enabled, since
# there is now a lovely circular dependency with the go-net package...
_MAIN =		golang.org/x/crypto
_SUBPKGS =	bcrypt \
		blake2b \
		blake2s \
		blowfish \
		bn256 \
		cast5 \
		chacha20poly1305 \
		chacha20poly1305/internal/chacha20 \
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
