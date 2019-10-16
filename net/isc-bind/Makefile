# $OpenBSD: Makefile,v 1.98 2019/10/16 21:33:06 sthen Exp $

COMMENT=	Berkeley Internet Name Daemon: DNS server and tools

# 9.11 is an ESV.  After 9.11 the format changes: odd numbers are devel,
# even numbers are stable (and for stable branches, point releases are
# bug fixes only).  The next ESV will be 9.16.
V=		9.11.12
EPOCH=		0

DISTNAME=	bind-$V
PKGNAME=	isc-bind-${V:S/-P/pl/}

# in shared_libs.log but not installed: isc-nosymtbl, t_api
SHARED_LIBS +=  isc                  4.2
SHARED_LIBS +=  isccc                2.0
SHARED_LIBS +=  dns                  8.0
SHARED_LIBS +=  isccfg               3.0
SHARED_LIBS +=  bind9                0.1
SHARED_LIBS +=  lwres                0.1
SHARED_LIBS +=  irs                  2.0

CATEGORIES=	net

HOMEPAGE=	http://www.isc.org/software/bind

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# MPL 2.0
PERMIT_PACKAGE=	Yes

WANTLIB=	c iconv idn2 json-c lzma m pthread unistring xml2 z

MASTER_SITES=	${MASTER_SITE_ISC:=bind9/$V/}

MODULES=	lang/python
# used for dnssec-checkds/dnssec-coverage, but don't want to force the run dep.
# XXX subpackage?
MODPY_RUNDEP=	No
BUILD_DEPENDS=	devel/py-ply
LIB_DEPENDS=	converters/libiconv \
		devel/json-c \
		devel/libidn2 \
		textproc/libxml

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-full-report \
		--enable-filter-aaaa \
		--enable-threads \
		--with-libtool \
		--with-randomdev=/dev/random \
		--with-libidn2 \
		--without-lmdb \
		--without-readline \
		--with-python=${MODPY_BIN}

CONFIGURE_ENV=	STD_CDEFINES="-DDIG_SIGCHASE=1"

.include <bsd.port.arch.mk>

# we don't link with libgcc, use the c++abi unwinder instead
.if ${PROPERTIES:Mclang}
MAKE_FLAGS +=	UNWINDERLIB=-lc++abi
WANTLIB +=	c++abi
.endif

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/bind9

FLAVORS=	geoip no_ssl
FLAVOR?=
.if ${FLAVOR:Mgeoip}
CONFIGURE_ARGS+= --with-geoip2
LIB_DEPENDS+=	net/libmaxminddb
WANTLIB+=	maxminddb
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c
.endif

.if ${FLAVOR:Mno_ssl}
CONFIGURE_ARGS+= --without-openssl
.else
WANTLIB+=	crypto
.endif

# not strictly speaking interactive, but it configures temporary addresses on
# lo0 as root, so let's try and avoid running it unintentionally
TEST_IS_INTERACTIVE= Yes

pre-test:
	cd ${WRKSRC}/bin/tests/system && ${SUDO} ./ifconfig.sh up

post-test:
	cd ${WRKSRC}/bin/tests/system && ${SUDO} ./ifconfig.sh down

post-install:
	cd ${FILESDIR}; ${INSTALL_DATA} localhost loopback loopback6.arpa \
	    named.conf root.hint ${PREFIX}/share/examples/bind9/

.include <bsd.port.mk>
