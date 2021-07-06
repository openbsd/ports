# $OpenBSD: Makefile,v 1.1.1.1 2021/07/06 07:59:47 landry Exp $

COMMENT =		new way to see and navigate directory trees

GH_ACCOUNT =		Canop
GH_PROJECT =		broot
GH_TAGNAME =		v1.6.1

CATEGORIES =		sysutils

HOMEPAGE =	https://dystroy.org/broot/
# MIT
PERMIT_PACKAGE =	Yes

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo

LIB_DEPENDS +=		devel/libgit2/libgit2 \
			textproc/oniguruma

WANTLIB +=		c m git2 onig
CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

.include <crates.inc>

.include <bsd.port.mk>
