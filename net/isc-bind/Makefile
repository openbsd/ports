# $OpenBSD: Makefile,v 1.19 2013/08/28 20:55:22 rpe Exp $

COMMENT=	Berkeley Internet Name Daemon: DNS server and tools

V=		9.9.3-P2
REVISION=	0
DISTNAME=	bind-$V
PKGNAME=	isc-bind-${V:S/-P/pl/}

SHARED_LIBS +=  bind9                     0.0 # 60.4
SHARED_LIBS +=  dns                       0.0 # 70.2
SHARED_LIBS +=  isc                       0.0 # 63.1
SHARED_LIBS +=  isccc                     0.0 # 60.0
SHARED_LIBS +=  isccfg                    0.0 # 62.0
SHARED_LIBS +=  lwres                     0.0 # 60.1

CATEGORIES=	net

HOMEPAGE=	http://www.isc.org/software/bind

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto m pthread xml2 z

MASTER_SITES=	${MASTER_SITE_ISC:=bind9/$V/}
MASTER_SITES0=	http://ss.vix.su/~vjs/

FLAVORS=	ratelimit
FLAVOR?=

.if ${FLAVOR:Mratelimit}
PATCHFILES+=	rl-${V}.patch:0
.else
SUPDISTFILES+=	rl-${V}.patch:0
.endif

MODULES=	converters/libiconv \
		lang/python
# used for dnssec-checkds/dnssec-coverage, but don't want to force the run dep.
MODPY_RUNDEP=	No
LIB_DEPENDS=	textproc/libxml
SUBST_VARS=	LOCALSTATEDIR

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-newstats \
		--enable-threads \
		--with-libtool \
		--with-python=${MODPY_BIN}

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/bind9

.include <bsd.port.mk>
