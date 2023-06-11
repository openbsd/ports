COMMENT =		like jq, but for HTML

GH_ACCOUNT =            mgdm
GH_PROJECT =            htmlq
GH_TAGNAME =            v0.4.0

CATEGORIES =		textproc

MAINTAINER =		Xi Lu <lx@shellcodes.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODCARGO_WANTLIB} m

MODULES =		devel/cargo

# for riscv64 and powerpc64, please keep: libc >= 0.2.113
MODCARGO_CRATES_UPDATE =libc

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

.include "crates.inc"
.include <bsd.port.mk>
