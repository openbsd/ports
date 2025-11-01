COMMENT =		CLI for HTTP requests

GH_ACCOUNT =		Orange-OpenSource
GH_PROJECT =		hurl
GH_TAGNAME =		7.0.0
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		https://hurl.dev

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# Apache 2
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} curl m xml2

MODULES =		devel/cargo
LIB_DEPENDS =		net/curl \
			textproc/libxml

CONFIGURE_STYLE =	cargo

# libclang.so
MODULES +=		lang/clang
MODCARGO_ENV +=		LIBCLANG_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib \
			LD_LIBRARY_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib

MODCARGO_INSTALL_TARGET_PATHS = ./packages/hurl ./packages/hurlfmt

# tests would require a python venv
NO_TEST =		Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/manual/hurl{,fmt}.1 ${PREFIX}/man/man1

.include "crates.inc"
.include <bsd.port.mk>
