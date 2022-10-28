COMMENT =		new way to see and navigate directory trees

GH_ACCOUNT =		Canop
GH_PROJECT =		broot
GH_TAGNAME =		v1.14.2
REVISION =		1

CATEGORIES =		sysutils

HOMEPAGE =		https://dystroy.org/broot/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi m onig pthread z

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo
# for riscv64 and powerpc64, please keep: cc >= 1.0.73 and libc >= 0.2.113
MODCARGO_CRATES_UPDATE =	cc libc
MODCARGO_CRATES_KEEP += libgit2-sys

CONFIGURE_STYLE =	cargo

LIB_DEPENDS +=		textproc/oniguruma

SEPARATE_BUILD =	Yes

.include "crates.inc"

.include <bsd.port.mk>
