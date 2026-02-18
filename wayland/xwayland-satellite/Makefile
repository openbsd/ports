COMMENT =	rootless Xwayland integration for any Wayland compositor

V =		0.8

GH_ACCOUNT = Supreeeme
GH_PROJECT = xwayland-satellite
GH_TAGNAME = v${V}
DISTNAME = ${GH_PROJECT}-${V}

# Bundled dependencies
SITES += ${SITES_GITHUB}
DISTFILES = ${GH_DISTFILE}

EXTRACT_SUFX = .tar.gz

MODCARGO_NO_DEFAULT_FEATURES = Yes
MODCARGO_FEATURES =

CATEGORIES =	wayland

MAINTAINER =	Tobias Heider <tobhe@openbsd.org>

# MPL-2.0
PERMIT_PACKAGE = Yes

MODULES =	devel/cargo \
		lang/clang

WANTLIB +=      ${MODCARGO_WANTLIB}
WANTLIB +=	m xcb xcb-cursor

CONFIGURE_STYLE =	cargo

MAKE_ENV +=	LIBCLANG_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib

.include "crates.inc"
.include <bsd.port.mk>
