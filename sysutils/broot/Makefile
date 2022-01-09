# $OpenBSD: Makefile,v 1.3 2022/01/09 12:29:02 rsadowski Exp $

COMMENT =		new way to see and navigate directory trees

GH_ACCOUNT =		Canop
GH_PROJECT =		broot
GH_TAGNAME =		v1.9.1

CATEGORIES =		sysutils

HOMEPAGE =		https://dystroy.org/broot/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi git2 m onig pthread

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

LIB_DEPENDS +=		devel/libgit2/libgit2 \
			textproc/oniguruma

SEPARATE_BUILD =	Yes

.include "crates.inc"

.include <bsd.port.mk>
