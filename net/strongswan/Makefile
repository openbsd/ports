# $OpenBSD: Makefile,v 1.8 2020/03/25 23:57:52 sthen Exp $

COMMENT=	IPsec-based VPN software (IKEv1/IKEv2) with XAUTH and EAP

DISTNAME=	strongswan-5.8.3
# don't want versions like strongswan-5.8.0dr2
PORTROACH=	limit:.*[0-9]\.[0-9]\.[0-9]$$
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=	charon                    0.0 # 0.0
SHARED_LIBS +=	ipsec                     0.0 # 0.0
SHARED_LIBS +=	radius                    0.0 # 0.0
SHARED_LIBS +=	strongswan                0.0 # 0.0
SHARED_LIBS +=	tls                       0.0 # 0.0
SHARED_LIBS +=	vici                      0.0 # 0.0

CATEGORIES=	net security

HOMEPAGE=	https://www.strongswan.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} botan-2 bz2 c crypto execinfo gmp
WANTLIB += lzma m z

COMPILER=	base-clang ports-gcc

MASTER_SITES=	https://download.strongswan.org/

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
BUILD_DEPENDS=	devel/bison
CONFIGURE_ENV=	YACC="bison -y"
USE_GMAKE=	Yes
LIBTOOL_FLAGS=	--tag=disable-static
SYSCONFDIR=	${BASESYSCONFDIR}/strongswan

LIB_DEPENDS=	devel/gmp \
		devel/libexecinfo \
		security/botan2

CONFIGURE_ARGS+= \
	--enable-chapoly \
	--enable-eap-gtc \
	--enable-eap-identity \
	--enable-eap-mschapv2 \
	--enable-eap-peap \
	--enable-eap-radius \
	--enable-eap-tls \
	--enable-eap-ttls \
	--enable-gcm \
	--enable-md4 \
	--enable-pkcs11 \
	--enable-xauth-eap

# AES-NI support builds only on x86
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+= --enable-aesni
PKG_ARGS+= -Daesni=1
.else
PKG_ARGS+= -Daesni=0
.endif

# either botan or openssl for DH/ECDH/HMAC
# (can probably be made to work with libressl with sufficient #ifdefs)
CONFIGURE_ARGS+= --enable-botan

# kernel-pfkey: support for kernel IPsec via pfkey; needs porting
CONFIGURE_ARGS += --disable-kernel-pfkey

# kernel-libipsec: userland IPsec library interfacing via tun(4) -
# not recommended for gateways due to low performance
CONFIGURE_ARGS += --enable-kernel-libipsec

# can't use with kernel-libipsec as-is; needs ioctl on tun(4)
#CONFIGURE_ARGS += --with-group=_strongswan \
#	--with-user=_strongswan

# BSD routing code
CONFIGURE_ARGS+= \
	--disable-kernel-netlink \
	--enable-kernel-pfroute

TEST_IS_INTERACTIVE=	threading test suite: rwlock test hangs!

post-install:
	find ${PREFIX}/lib/ipsec -name '*.la' -delete
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/strongswan
	mv ${WRKINST}${SYSCONFDIR}/{ipsec*,strong*,swan*} ${PREFIX}/share/examples/strongswan/
	rmdir ${WRKINST}${SYSCONFDIR}

.include <bsd.port.mk>
