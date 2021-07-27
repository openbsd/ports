# $OpenBSD: Makefile,v 1.2 2021/07/27 11:55:36 sthen Exp $

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

CATEGORIES =		sysutils

# Apache/MIT
PERMIT_PACKAGE =	Yes

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo

WANTLIB += c c++abi git2 m onig pthread

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

MAKE_ENV +=		LIBGIT2_SYS_USE_PKG_CONFIG=1

LIB_DEPENDS +=		devel/libgit2/libgit2 \
			textproc/oniguruma

.include <crates.inc>

.include <bsd.port.mk>
