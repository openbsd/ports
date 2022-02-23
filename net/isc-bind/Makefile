# $OpenBSD: Makefile,v 1.153 2022/02/23 15:47:35 sthen Exp $

COMMENT=	Berkeley Internet Name Daemon: DNS server and tools

# Second digits: odd numbers devel, even numbers stable,
# ESV branched occasionally.  9.16.x is ESV.
V=		9.16.26
SUBST_VARS+=	V
PORTROACH=	limitw:1,even
EXTRACT_SUFX=	.tar.xz
EPOCH=		3
PATCH_DIST_STRIP= -p1

DISTNAME=	bind-$V
PKGNAME=	isc-bind-${V:S/-P/pl/}

CATEGORIES=	net

HOMEPAGE=	https://www.isc.org/bind/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# MPL 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto execinfo iconv idn2 json-c lzma m pthread ssl
WANTLIB += unistring uv xml2 z

FLAVORS=	geoip
FLAVOR?=

MASTER_SITES=	${MASTER_SITE_ISC:=bind9/$V/}
MASTER_SITES0=	${MASTER_SITE_ISC:=bind9/$V/patches/}

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
FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/bind9

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

.if ${MACHINE_ARCH:Mhppa}
WANTLIB +=	atomic
LIB_DEPENDS +=	${MODGCC4_CPPLIBDEP}
MAKE_FLAGS +=	LDFLAGS="${LDFLAGS} -latomic"
.endif

.if ${FLAVOR:Mgeoip}
LIB_DEPENDS+=	net/libmaxminddb
WANTLIB+=	maxminddb
.else
CONFIGURE_ARGS+= --disable-geoip
.endif

# not strictly speaking interactive, but it configures temporary addresses on
# lo0 as root, so let's try and avoid running it unintentionally
TEST_IS_INTERACTIVE= Yes

pre-test:
	@echo '*** tests still need more work in the port - server processes not starting'
	cd ${WRKSRC}/bin/tests/system && ${SUDO} ./ifconfig.sh up

post-test:
	cd ${WRKSRC}/bin/tests/system && ${SUDO} ./ifconfig.sh down

# symlinks to make it easier to use newer dig/etc if /usr/bin is ahead of
# /usr/local/bin in the path:
post-install:
.for i in dig nslookup host
	ln -fs $i ${PREFIX}/bin/e$i; ln -fs $i.1 ${PREFIX}/man/man1/e$i.1
.endfor
	${INSTALL_DATA} ${FILESDIR}/named.conf ${PREFIX}/share/examples/bind9/

.include <bsd.port.mk>
