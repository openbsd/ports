# $OpenBSD: Makefile,v 1.2 2021/07/16 07:44:15 landry Exp $

COMMENT =		update notifications for nextcloud clients

GH_ACCOUNT =		nextcloud
GH_PROJECT =		notify_push
GH_TAGNAME =		v0.2.1

CATEGORIES =		www

# AGPLv3
PERMIT_PACKAGE =	Yes

# a tarball is shipped on github, but without Cargo.lock, and contains linux binaries..
# MASTER_SITES =	https://github.com/nextcloud/notify_push/releases/download/v0.1.7/
# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

COMPILER =		base-clang ports-gcc

MODULES =		devel/cargo

.include "crates.inc"

MODCARGO_CRATES_SQLITE3_BUNDLED = Yes
PATCHORIG =		.openbsd.orig
WANTLIB += c c++abi m pthread

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
