# $OpenBSD: Makefile,v 1.7 2022/01/09 12:28:03 rsadowski Exp $

COMMENT =		cat(1) clone with wings

GH_ACCOUNT =		sharkdp
GH_PROJECT =		bat
GH_TAGNAME =		v0.19.0

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
