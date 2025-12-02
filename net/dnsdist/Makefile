COMMENT=		highly DNS-, DoS- and abuse-aware loadbalancer

DISTNAME=		dnsdist-2.0.2
EXTRACT_SUFX=		.tar.xz
DEBUG_PACKAGES=		${BUILD_PACKAGES}

CATEGORIES=		net

HOMEPAGE=		https://dnsdist.org/

MAINTAINER=		Otto Moerbeek <otto@drijf.net>
SITES=			https://downloads.powerdns.com/releases/

# GPLv2 only
PERMIT_PACKAGE=		Yes

FLAVORS=		h3
FLAVOR?=

SYSCONFDIR=		${BASESYSCONFDIR}/dnsdist

COMPILER =		base-clang ports-gcc

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mrust}
MODULES+=		devel/cargo
MODCARGO_CARGOTOML=	${WRKSRC}/dnsdist-rust-lib/rust/Cargo.toml
MODCARGO_TARGET_DIR=	${WRKSRC}/dnsdist-rust-lib/rust/target
MODCARGO_BUILD=		No
MODCARGO_INSTALL=	No
MODCARGO_TEST=		No
CONFIGURE_ARGS=		-Dyaml=enabled

pre-configure:
			@${MODCARGO_configure}
.else
CONFIGURE_ARGS=		-Dyaml=disabled
# Needed for SUPDISTFILES
_MODCARGO_DIST_SUBDIR=	cargo/
.endif

WANTLIB +=		${MODLUA_WANTLIB} ${COMPILER_LIBCXX} cdb crypto edit \
			lmdb fstrm nghttp2 pthread sodium 

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

MODULES+=		devel/meson

CONFIGURE_STYLE=	meson
CONFIGURE_ARGS+=	-Dcdb=enabled \
			-Ddns-over-https=enabled \
			-Ddns-over-http3=disabled \
			-Ddns-over-tls=enabled \
			-Ddns-over-quic=disabled \
			-Ddnscrypt=enabled \
			-Ddnstap=enabled \
			-Debpf=disabled \
			-Dlibedit=enabled \
			-Dhardening=disabled \
			-Dlibcap=disabled \
			-Dlmdb=enabled \
			-Dnghttp2=enabled \
			-Dre2=enabled \
			-Dsnmp=disabled \
			-Dsystemd-service=disabled \
			-Dtls-gnutls=disabled \
			-Dxsk=disabled \

MAKE_ENV+=		${MODCARGO_ENV}

BUILD_DEPENDS=		devel/boost \
			textproc/py-yaml
LIB_DEPENDS+=		${MODLUA_LIB_DEPENDS} \
			databases/lmdb \
			databases/tinycdb \
			net/libfstrm \
			security/libsodium \
			textproc/re2 \
			www/nghttp2


.if ${FLAVOR:L:Mh3}

# Lua module overrides FULLPKGNAME
FULLPKGNAME=		${PKGNAME}-${FLAVOR}
CONFIGURE_ARGS+=	-Dtls-libssl-dir="${LOCALBASE}/eboringssl" \
			-Dlibcrypto-path="${LOCALBASE}/eboringssl" \
			-Dcpp_args=-DDISABLE_OCSP_STAPLING \
			-Dquiche=enabled \
			-Ddns-over-quic=enabled \
			-Ddns-over-http3=enabled \

BUILD_DEPENDS+=		net/quiche \
			security/boringssl/head
.else

CONFIGURE_ARGS+=	-Dquiche=disabled
WANTLIB+=		ssl

.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/dnsdist
	cd ${WRKSRC}; ${INSTALL_DATA} README.md ${PREFIX}/share/doc/dnsdist/; \
	    ${INSTALL_DATA} dnsdist.conf-dist ${PREFIX}/share/examples/dnsdist/

.include "crates.inc"

.for _cratename _cratever in ${MODCARGO_CRATES}
SUPDISTFILES += ${_MODCARGO_DIST_SUBDIR}${_cratename}-${_cratever}.tar.gz
.endfor

.include <bsd.port.mk>
