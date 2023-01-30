COMMENT =		code search and replace tool

GH_ACCOUNT =		dalance
GH_PROJECT =		amber
GH_TAGNAME =		v0.5.9
REVISION =		1

CATEGORIES =		textproc sysutils
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c c++abi pthread

MODULES =		devel/cargo
CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

# for riscv64 and powerpc64, please keep: libc >= 0.2.113
MODCARGO_CRATES_UPDATE =	libc

.include "crates.inc"

.include <bsd.port.mk>
