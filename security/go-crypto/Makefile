# $OpenBSD: Makefile,v 1.11 2019/09/12 18:51:19 jsing Exp $

COMMENT =	Go supplementary cryptography libraries
DISTNAME =	go-crypto-20190904
GH_ACCOUNT =	golang
GH_PROJECT =	crypto
GH_COMMIT =	9756ffdc24725223350eb3266ffb92590d28f278
CATEGORIES =	security devel

HOMEPAGE =	https://godoc.org/golang.org/x/crypto

# BSD
PERMIT_PACKAGE = Yes

WANTLIB =	c pthread

MODULES =	lang/go

MODGO_TYPE =	lib

BUILD_DEPENDS = devel/go-sys

# acme/autocert now imports golang.org/x/net/idna, which creates a circular
# import between go-crypto and go-net.
#
#acme/autocert
#acme/autocert/internal/acmetest

_MAIN =		golang.org/x/crypto
_SUBPKGS =	acme \
		argon2 \
		bcrypt \
		blake2b \
		blake2s \
		blowfish \
		bn256 \
		cast5 \
		chacha20poly1305 \
		cryptobyte \
		cryptobyte/asn1 \
		curve25519 \
		ed25519 \
		ed25519/internal/edwards25519 \
		hkdf \
		internal/chacha20 \
		internal/subtle \
		md4 \
		nacl/auth \
		nacl/box \
		nacl/secretbox \
		nacl/sign \
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
		ssh/knownhosts \
		ssh/terminal \
		tea \
		twofish \
		xtea \
		xts

ALL_TARGET =	${_SUBPKGS:%=${_MAIN}/%}
WRKSRC =	${MODGO_WORKSPACE}/src/${_MAIN}

.include <bsd.port.mk>
