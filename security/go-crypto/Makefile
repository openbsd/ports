# $OpenBSD: Makefile,v 1.5 2017/09/08 17:06:22 jsing Exp $

COMMENT =	Go supplementary cryptography libraries
DISTNAME =	go-crypto-20170824
GH_ACCOUNT =	golang
GH_PROJECT =	crypto
GH_COMMIT =	eb71ad9bd329b5ac0fd0148dd99bd62e8be8e035
CATEGORIES =	security devel

HOMEPAGE =	https://godoc.org/golang.org/x/crypto

MAINTAINER =	Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM = Yes

WANTLIB =	c pthread

MODULES =	lang/go

MODGO_TYPE =	lib

BUILD_DEPENDS = devel/go-sys

_MAIN =		golang.org/x/crypto
_SUBPKGS =	acme \
		acme/autocert \
		bcrypt \
		blake2b \
		blake2s \
		blowfish \
		bn256 \
		cast5 \
		chacha20poly1305 \
		chacha20poly1305/internal/chacha20 \
		cryptobyte \
		curve25519 \
		ed25519 \
		ed25519/internal/edwards25519 \
		hkdf \
		md4 \
		nacl/auth \
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
		ssh/knownhosts \
		ssh/terminal \
		ssh/test \
		tea \
		twofish \
		xtea \
		xts

ALL_TARGET =	${_SUBPKGS:%=${_MAIN}/%}
WRKSRC =	${MODGO_WORKSPACE}/src/${_MAIN}

.include <bsd.port.mk>
