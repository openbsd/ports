COMMENT =		coding agent with a rich terminal UI

MODGO_MODNAME =		github.com/charmbracelet/crush
MODGO_VERSION =		v0.98.1

DISTNAME =		crush-${MODGO_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/charmbracelet/crush

# FSL-1.1 (no-compete terms), old versions become MIT after 2 years
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

# The grep and glob agent tools use ripgrep when it is available and fall
# back to a pure-Go implementation otherwise. ripgrep is built with Rust,
# which is unavailable on armv7 and i386, so use the "rust" property.
.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mrust}
RUN_DEPENDS =		textproc/ripgrep
.endif

# Upstream release binaries inject the tag version into internal/version.
MODGO_LDFLAGS +=	-X github.com/charmbracelet/crush/internal/version.Version=${MODGO_VERSION}

.include "modules.inc"
.include <bsd.port.mk>
