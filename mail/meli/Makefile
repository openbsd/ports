COMMENT =		terminal mail client

GH_ACCOUNT =		meli
GH_PROJECT =		meli
GH_TAGNAME =		v0.9.0

# error[E0308]: mismatched types                                  --> melib/src/backends/notmuch.rs:82:13
ONLY_FOR_ARCHS = ${LP64_ARCHS}

CATEGORIES =		mail

HOMEPAGE =	https://meli-email.org/
# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo \
			lang/clang

MODCARGO_FEATURES +=	jmap
MODCARGO_INSTALL_TARGET_PATHS =	meli
MODCARGO_CRATES_KEEP += libsqlite3-sys

# for libnettle-sys that links against nettle3
MODCARGO_ENV =		LIBCLANG_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib
MODCARGO_ENV +=		PKG_CONFIG_PATH=${LOCALBASE}/lib/nettle3/pkgconfig
MODCARGO_RUSTFLAGS +=	-C link-arg="-Wl,-rpath,${LOCALBASE}/lib/nettle3"
MODCARGO_RUSTFLAGS +=	-L native=${LOCALBASE}/lib/nettle3

.include "crates.inc"

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

# sequoia-ipc runs capnp
BUILD_DEPENDS =	devel/capnproto
LIB_DEPENDS =	net/curl
LIB_DEPENDS +=	security/libnettle

WANTLIB +=	${MODCARGO_WANTLIB} crypto curl m ssl
WANTLIB +=	gmp lib/nettle3/hogweed lib/nettle3/nettle
PORTHOME =	${WRKDIR}

post-install:
	${INSTALL_MAN} ${WRKSRC}/meli/docs/meli.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/meli/docs/meli.conf.5 ${PREFIX}/man/man5/
	${INSTALL_MAN} ${WRKSRC}/meli/docs/meli-themes.5 ${PREFIX}/man/man5/
	${INSTALL_MAN} ${WRKSRC}/meli/docs/meli.7 ${PREFIX}/man/man7/
	cp -r ${WRKSRC}/meli/docs/samples ${PREFIX}/share/examples/meli/

.include <bsd.port.mk>
