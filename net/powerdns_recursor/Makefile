COMMENT=		recursive nameserver

V=			5.0.7
DISTNAME=		pdns-recursor-${V}
EXTRACT_SUFX=		.tar.bz2
PKGNAME=		powerdns-recursor-${V}

CATEGORIES=		net

HOMEPAGE=		https://www.powerdns.com/

# GPLv2 only, OpenSSL exemption
PERMIT_PACKAGE=		Yes

WANTLIB+=		${MODCARGO_WANTLIB} ${COMPILER_LIBCXX} boost_atomic-mt
WANTLIB+=		boost_context-mt boost_filesystem-mt boost_system-mt crypto
WANTLIB+=		curl fstrm m nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_quictls
WANTLIB+=		sodium ssl z

SITES=			https://downloads.powerdns.com/releases/
MAINTAINER=		Otto Moerbeek <otto@drijf.net>

COMPILER =		base-clang ports-gcc

NO_TEST=		Yes

LIB_DEPENDS=		devel/boost \
			devel/boost,-md \
			net/curl \
			net/libfstrm \
			security/libsodium

MODULES+=		devel/cargo
MODCARGO_CARGOTOML=	${WRKSRC}/settings/rust/Cargo.toml
MODCARGO_TARGET_DIR=	${WRKSRC}/settings/rust/target 
MODCARGO_BUILD=		No
MODCARGO_INSTALL=	No
MODCARGO_TEST=		No

MODULES+=		lang/lua
MODLUA_VERSION=		5.3
MODLUA_SA=		Yes
LIB_DEPENDS+=		${MODLUA_LIB_DEPENDS}
WANTLIB+=		${MODLUA_WANTLIB}

SYSCONFDIR=		${BASESYSCONFDIR}/pdns

CONFIGURE_STYLE=	cargo autoreconf
AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16
USE_GMAKE=		Yes

CONFIGURE_ARGS+=	--disable-hardening \
			--disable-botan \
			--disable-libdecaf \
			--enable-dns-over-tls \
			--enable-dnstap \
			--with-lua=${MODLUA_DEP} \
			--without-net-snmp \
			--without-systemd

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MAKE_ENV+=		${MODCARGO_ENV}

EXAMPLE_DIR=            ${PREFIX}/share/examples/pdns/

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	cat ${FILESDIR}/recursor.conf ${WRKSRC}/recursor.conf-dist > \
	    ${WRKSRC}/recursor.conf # concatenate local and upstream sample configs
	${INSTALL_DATA} ${WRKSRC}/recursor.conf ${EXAMPLE_DIR}
	rm ${WRKINST}${SYSCONFDIR}/recursor.conf-dist

.include "crates.inc"

.include <bsd.port.mk>
