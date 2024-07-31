# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =		sparc64

# 20220112 - build often fails due to out of memory
# memory allocation of 402653184 bytes failed
# error: could not compile `notify_push`
NOT_FOR_ARCHS+=		i386

COMMENT =		update notifications for nextcloud clients

GH_ACCOUNT =		nextcloud
GH_PROJECT =		notify_push
GH_TAGNAME =		v0.7.0

CATEGORIES =		www

# AGPLv3
PERMIT_PACKAGE =	Yes

# a tarball is shipped on github, but without Cargo.lock, and contains linux binaries..
# SITES =	https://github.com/nextcloud/notify_push/releases/download/v0.1.7/

COMPILER =		base-clang ports-gcc

MODULES =		devel/cargo

.include "crates.inc"

MODCARGO_CRATES_KEEP +=	libsqlite3-sys
WANTLIB += ${MODCARGO_WANTLIB} m

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
