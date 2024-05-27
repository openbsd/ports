# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	command line BitWarden client

DISTNAME =	rbw-1.10.2

CATEGORIES =	security

HOMEPAGE =	https://git.tozt.net/rbw/about/

SITES =		https://git.tozt.net/rbw/snapshot/

# MIT X11
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} crypto m ssl

DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

.include "crates.inc"

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
