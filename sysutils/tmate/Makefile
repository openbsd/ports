# $OpenBSD: Makefile,v 1.12 2020/03/28 17:39:42 kn Exp $

COMMENT =	instant terminal sharing based on tmux

GH_ACCOUNT =	tmate-io
GH_PROJECT =	tmate
GH_TAGNAME =	2.4.0
CATEGORIES =	sysutils
REVISION =	1

HOMEPAGE =	https://tmate.io

# BSD
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c event_core event_extra msgpackc curses ssh util

LIB_DEPENDS =	devel/libevent2 \
		devel/msgpack \
		security/libssh

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS +=	--disable-debug

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
