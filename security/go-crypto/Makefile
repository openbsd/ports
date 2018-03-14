# $OpenBSD: Makefile,v 1.6 2018/03/14 14:19:18 jsing Exp $

COMMENT =	Go supplementary cryptography libraries
DISTNAME =	go-crypto-20180216
GH_ACCOUNT =	golang
GH_PROJECT =	crypto
GH_COMMIT =	650f4a345ab4e5b245a3034b110ebc7299e68186
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
		tea \
		twofish \
		xtea \
		xts

ALL_TARGET =	${_SUBPKGS:%=${_MAIN}/%}
WRKSRC =	${MODGO_WORKSPACE}/src/${_MAIN}

.include <bsd.port.mk>
