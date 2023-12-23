# ring-v0.16.20 does not support those archs
NOT_FOR_ARCHS =	powerpc64 riscv64 sparc64

COMMENT =	command line BitWarden client

DISTNAME =	rbw-1.8.3
REVISION =	1

CATEGORIES =	security

HOMEPAGE =	https://git.tozt.net/rbw/about/

SITES =		https://git.tozt.net/rbw/snapshot/

# MIT X11
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi crypto m pthread ssl

DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

.include "crates.inc"

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

BUILD_DEPENDS =		security/rust-ring

.include <bsd.port.mk>
