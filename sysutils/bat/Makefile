# $OpenBSD: Makefile,v 1.4 2021/08/03 15:26:05 semarie Exp $

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
GH_TAGNAME =		v0.18.2

REVISION =		0

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

# update git2 to cope with rust 1.54.0
MODCARGO_CRATES_UPDATE += git2 libgit2-sys

.include "crates.inc"

.include <bsd.port.mk>
