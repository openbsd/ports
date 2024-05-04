COMMENT =		cat(1) clone with wings

GH_ACCOUNT =		sharkdp
GH_PROJECT =		bat
GH_TAGNAME =		v0.24.0
REVISION =		0

CATEGORIES =		sysutils

# Apache/MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo
# for riscv64 and powerpc64, please keep: cc >= 1.0.73 and libc >= 0.2.113
MODCARGO_CRATES_UPDATE =	cc

WANTLIB += ${MODCARGO_WANTLIB} git2 m onig

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

LIB_DEPENDS =		devel/libgit2/libgit2 \
			textproc/oniguruma

.include "crates.inc"

.include <bsd.port.mk>
