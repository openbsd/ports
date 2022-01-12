# $OpenBSD: Makefile,v 1.4 2022/01/12 09:57:10 sthen Exp $

# 20220112 - build often fails due to out of memory
# memory allocation of 402653184 bytes failed
# error: could not compile `notify_push`
NOT_FOR_ARCHS= =	i386

COMMENT =		update notifications for nextcloud clients

GH_ACCOUNT =		nextcloud
GH_PROJECT =		notify_push
GH_TAGNAME =		v0.2.2

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
