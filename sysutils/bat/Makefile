# $OpenBSD: Makefile,v 1.6 2021/09/15 08:27:44 tb Exp $

COMMENT =		cat(1) clone with wings

GH_ACCOUNT =		sharkdp
GH_PROJECT =		bat
GH_TAGNAME =		v0.18.3
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
PATCHORIG =		.openbsd.orig

LIB_DEPENDS +=		devel/libgit2/libgit2 \
			textproc/oniguruma

.include "crates.inc"

.include <bsd.port.mk>
