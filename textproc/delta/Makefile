COMMENT =		viewer for git and diff output

GH_ACCOUNT =		dandavison
GH_PROJECT =		delta
GH_TAGNAME =		0.14.0
REVISION =		2

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/dandavison/delta

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c c++abi git2 m onig pthread

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo
# for riscv64 and powerpc64, please keep: cc >= 1.0.73 and libc >= 0.2.113
MODCARGO_CRATES_UPDATE =	cc libc

LIB_DEPENDS +=		devel/libgit2/libgit2 \
			textproc/oniguruma

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

.include "crates.inc"

.include <bsd.port.mk>
