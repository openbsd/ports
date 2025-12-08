COMMENT=		recursive nameserver

V=			5.3.3
DISTNAME=		pdns-recursor-${V}
EXTRACT_SUFX=		.tar.xz
PKGNAME=		powerdns-recursor-${V}

CATEGORIES=		net

# ring-v0.17 does not support this arch
NOT_FOR_ARCHS=		sparc64 

HOMEPAGE=		https://www.powerdns.com/

# GPLv2 only, OpenSSL exemption
PERMIT_PACKAGE=		Yes

WANTLIB+=		${MODCARGO_WANTLIB} ${COMPILER_LIBCXX}
WANTLIB+=		boost_context-mt boost_filesystem-mt crypto
WANTLIB+=		curl fstrm m
WANTLIB+=		sodium ssl

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
MODCARGO_CARGOTOML=	${WRKSRC}/rec-rust-lib/rust/Cargo.toml
MODCARGO_TARGET_DIR=	${WRKSRC}/rec-rust-lib/rust/target 
MODCARGO_BUILD=		No
MODCARGO_INSTALL=	No
MODCARGO_TEST=		No

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mluajit}
CONFIGURE_ARGS+=	-Dlua=luajit
LIB_DEPENDS+=		lang/luajit
WANTLIB+=		luajit-5.1
.else
CONFIGURE_ARGS+=	-Dlua=lua
MODULES+=		lang/lua
MODLUA_VERSION=		5.3
LIB_DEPENDS+=		${MODLUA_LIB_DEPENDS}
WANTLIB+=		${MODLUA_WANTLIB}
.endif

SYSCONFDIR=		${BASESYSCONFDIR}/pdns
SUBST_VARS+=		BASESYSCONFDIR

MODULES+=		devel/meson

pre-configure:
			@${MODCARGO_configure}

CONFIGURE_STYLE=	meson

CONFIGURE_ARGS+=	-Dhardening=disabled \
			-Ddns-over-tls=enabled \
			-Ddnstap=enabled \
			-Dlua=auto \
			-Dsnmp=disabled \
			-Dsystemd-service=disabled \
			-Dlibcap=disabled

MAKE_ENV+=		${MODCARGO_ENV}

EXAMPLE_DIR=		${PREFIX}/share/examples/pdns/

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_DATA} ${FILESDIR}/recursor.conf ${EXAMPLE_DIR}
	${INSTALL_DATA} ${WRKBUILD}/recursor.yml-dist ${EXAMPLE_DIR}

.include "crates.inc"

.include <bsd.port.mk>
