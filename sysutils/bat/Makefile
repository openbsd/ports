COMMENT =		cat(1) clone with wings

GH_ACCOUNT =		sharkdp
GH_PROJECT =		bat
GH_TAGNAME =		v0.22.1
REVISION =		0

CATEGORIES =		sysutils

# Apache/MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo
# for riscv64 and powerpc64, please keep: cc >= 1.0.73 and libc >= 0.2.113
MODCARGO_CRATES_UPDATE =	cc

WANTLIB += c c++abi git2 m onig pthread

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

LIB_DEPENDS +=		devel/libgit2/libgit2 \
			textproc/oniguruma

# XXX check if still needed with a newer release;
# see patch-modcargo-crates_libgit2-sys-0_14_0+1_5_0_build_rs
pre-build:
	sed -i 's/"files":{[^}]*}/"files":{}/' \
		${WRKSRC}/modcargo-crates/*/.cargo-checksum.json

.include "crates.inc"

.include <bsd.port.mk>
