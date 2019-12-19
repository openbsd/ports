# $OpenBSD: Makefile,v 1.105 2019/12/19 15:42:00 sthen Exp $

COMMENT=	Berkeley Internet Name Daemon: DNS server and tools

# 9.11 is an ESV.  After 9.11 the format changes: odd numbers are devel,
# even numbers are stable (and for stable branches, point releases are
# bug fixes only).  The next ESV will be 9.16.
V=		9.14.9
EPOCH=		0

DISTNAME=	bind-$V
PKGNAME=	isc-bind-${V:S/-P/pl/}

# in shared_libs.log but not installed: isc-nosymtbl, t_api
SHARED_LIBS +=  isc                  5.0
SHARED_LIBS +=  isccc                3.0
SHARED_LIBS +=  dns                  9.0
SHARED_LIBS +=  isccfg               4.0
SHARED_LIBS +=  bind9                1.0
SHARED_LIBS +=  irs                  3.0
SHARED_LIBS +=	ns                   0.0

CATEGORIES=	net

HOMEPAGE=	https://www.isc.org/bind/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# MPL 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto iconv idn2 json-c lzma m pthread unistring xml2 z

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

# /usr/obj/ports/isc-bind-9.14.9/bind-9.14.9/lib/dns/gen.c:29:10: fatal error: 'isc/platform.h' file not found
# SEPARATE_BUILD=	Yes
DEBUG_PACKAGES=	${BUILD_PACKAGES}
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

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

.include <bsd.port.arch.mk>

# we don't link with libgcc, use the c++abi unwinder instead
.if ${PROPERTIES:Mclang}
MAKE_FLAGS +=	UNWINDERLIB=-lc++abi
WANTLIB +=	c++abi
.endif

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/bind9

FLAVORS=	geoip
FLAVOR?=
.if ${FLAVOR:Mgeoip}
CONFIGURE_ARGS+= --with-geoip2
LIB_DEPENDS+=	net/libmaxminddb
WANTLIB+=	maxminddb
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
.for i in dig nslookup host
	ln -fs $i ${PREFIX}/bin/e$i; ln -fs $i.1 ${PREFIX}/man/man1/e$i.1
.endfor

.include <bsd.port.mk>
