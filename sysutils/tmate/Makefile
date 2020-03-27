# $OpenBSD: Makefile,v 1.9 2020/03/27 01:32:06 kn Exp $

COMMENT =	instant terminal sharing based on tmux

GH_ACCOUNT =	tmate-io
GH_PROJECT =	tmate
GH_TAGNAME =	2.4.0
CATEGORIES =	sysutils

# BSD
PERMIT_PACKAGE =	Yes

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

pre-configure:
# Fixup any stragglers that would pickup libevent1 from base
	sed -i 's,<event.h>,<event2/event.h>,' ${WRKSRC}/*.[ch]

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/tmate ${PREFIX}/bin/

.include <bsd.port.mk>
