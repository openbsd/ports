COMMENT =	rootless Xwayland integration for any Wayland compositor

XWS_COMMIT =	a879e5e0896a326adc79c474bf457b8b99011027
DIST_TUPLE = 	github Supreeeme xwayland-satellite ${XWS_COMMIT} .
PKGNAME =	xwayland-satellite-0.8.1pl20260316

MODCARGO_NO_DEFAULT_FEATURES = Yes
MODCARGO_FEATURES =

CATEGORIES =	wayland

MAINTAINER =	Tobias Heider <tobhe@openbsd.org>

# MPL-2.0
PERMIT_PACKAGE = Yes

MODULES =	devel/cargo \
		lang/clang

MODCLANG_COMPILER_LINKS =	No

WANTLIB +=      ${MODCARGO_WANTLIB}
WANTLIB +=	m xcb xcb-cursor

CONFIGURE_STYLE =	cargo

MAKE_ENV +=	LIBCLANG_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/xwayland-satellite.man \
		${PREFIX}/man/man1/xwayland-satellite.1

.include "crates.inc"
.include <bsd.port.mk>
