# $OpenBSD: Makefile,v 1.123 2020/08/21 06:03:11 sthen Exp $

COMMENT=	Berkeley Internet Name Daemon: DNS server and tools

# Odd numbers devel, even numbers stable, ESV branched occasionally.
# 9.16.x is ESV.
V=		9.16.6
PORTROACH=	limitw:1,even
EXTRACT_SUFX=	.tar.xz
EPOCH=		0

DISTNAME=	bind-$V
PKGNAME=	isc-bind-${V:S/-P/pl/}

# in shared_libs.log but not installed: isc-nosymtbl, t_api
SHARED_LIBS +=  isc                  7.0
SHARED_LIBS +=  isccc                3.0
SHARED_LIBS +=  dns                  9.3
SHARED_LIBS +=  isccfg               4.1
SHARED_LIBS +=  bind9                1.0
SHARED_LIBS +=  irs                  3.0
SHARED_LIBS +=	ns                   0.0

CATEGORIES=	net

HOMEPAGE=	https://www.isc.org/bind/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# MPL 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto iconv idn2 json-c lzma m pthread unistring uv xml2 z

MASTER_SITES=	${MASTER_SITE_ISC:=bind9/$V/}

MODULES=	lang/python
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
# used for dnssec-checkds/dnssec-coverage, but don't want to force the run dep.
MODPY_RUNDEP=	No
BUILD_DEPENDS=	devel/py-ply${MODPY_FLAVOR}
LIB_DEPENDS=	converters/libiconv \
		devel/json-c \
		devel/libidn2 \
		devel/libuv \
		textproc/libxml

DEBUG_PACKAGES=	${BUILD_PACKAGES}
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_ARGS=	--enable-full-report \
		--with-libtool \
		--with-libidn2 \
		--without-lmdb \
		--without-readline \
		--without-cmocka \
		--with-python=${MODPY_BIN}

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c
.if ${MACHINE_ARCH:Mhppa}
WANTLIB +=	atomic
LIB_DEPENDS +=	${MODGCC4_CPPLIBDEP}
MAKE_FLAGS +=	LDFLAGS="${LDFLAGS} -latomic"
.endif

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
LIB_DEPENDS+=	net/libmaxminddb
WANTLIB+=	maxminddb
.else
CONFIGURE_ARGS+= --disable-geoip
.endif

# not strictly speaking interactive, but it configures temporary addresses on
# lo0 as root, so let's try and avoid running it unintentionally
TEST_IS_INTERACTIVE= Yes
TEST_DEPENDS=	sysutils/coreutils

pre-test:
	@echo '*** tests still need more work in the port - server processes not starting'
	cd ${WRKSRC}/bin/tests/system && ${SUDO} ./ifconfig.sh up
	ln -fs ${LOCALBASE}/bin/gseq ${WRKDIR}/bin/seq

post-test:
	cd ${WRKSRC}/bin/tests/system && ${SUDO} ./ifconfig.sh down

post-install:
.for i in dig nslookup host
	ln -fs $i ${PREFIX}/bin/e$i; ln -fs $i.1 ${PREFIX}/man/man1/e$i.1
.endfor
	${INSTALL_DATA} ${FILESDIR}/[a-z]* ${PREFIX}/share/examples/bind9/

.include <bsd.port.mk>
