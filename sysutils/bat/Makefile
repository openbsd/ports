# $OpenBSD: Makefile,v 1.5 2021/09/11 07:36:14 semarie Exp $

# building sys-info fails
# error[E0308]: mismatched types
#    --> /pobj/bat-0.18.2/bat-0.18.2/modcargo-crates/sys-info-0.9.0/lib.rs:542:29
#     |
# 542 |         if ret < 1 || ret > std::u32::MAX as i64 {
#     |                             ^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `i64`

ONLY_FOR_ARCHS =	${LP64_ARCHS}

COMMENT =		cat(1) clone with wings

GH_ACCOUNT =		sharkdp
GH_PROJECT =		bat
GH_TAGNAME =		v0.18.3

CATEGORIES =		sysutils

# Apache/MIT
PERMIT_PACKAGE =	Yes

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo

WANTLIB += c c++abi git2 m onig pthread

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

LIB_DEPENDS +=		devel/libgit2/libgit2 \
			textproc/oniguruma

.include "crates.inc"

.include <bsd.port.mk>
