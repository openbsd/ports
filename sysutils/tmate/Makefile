# $OpenBSD: Makefile,v 1.17 2022/03/10 12:03:35 kn Exp $

COMMENT =	instant terminal sharing based on tmux

GH_ACCOUNT =	tmate-io
GH_PROJECT =	tmate
GH_TAGNAME =	2.4.0
CATEGORIES =	sysutils
REVISION =	4

MASTER_SITES0 =	https://github.com/tmate-io/tmate/commit/
PATCHFILES =	tmate-bad-fingerprint{cbec43f56dfb48c2fb6e00faa2cb85443d4b7d8f}.patch:0 \
		tmate-include-errno{339e6c43575244f72831654e5dda41c037febde7}.patch:0
PATCH_DIST_STRIP =	-p1

HOMEPAGE =	https://tmate.io

MAINTAINER =	Klemens Nanni <kn@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c event_core event_extra msgpackc curses ssh util

LIB_DEPENDS =	devel/libevent2 \
		devel/msgpack \
		security/libssh

CONFIGURE_STYLE =	autoreconf
.ifndef DEBUG
CONFIGURE_ARGS +=	--disable-debug
.endif

DEBUG_PACKAGES =	${BUILD_PACKAGES}

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=       1.16
AUTORECONF=		./autogen.sh

SEPARATE_BUILD =	Yes

# before patch, otherwise updates-patches fails
post-extract:
	# XXX: use ports libevent2 not base libevent, avoid massive patching
	sed -i 's,<event.h>,<event2/event.h>,' ${WRKSRC}/*.[ch]

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/tmate ${PREFIX}/bin/

.include <bsd.port.mk>
