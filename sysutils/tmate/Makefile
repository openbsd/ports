# $OpenBSD: Makefile,v 1.3 2017/02/19 14:23:28 naddy Exp $

COMMENT =	instant terminal sharing based on tmux

GH_ACCOUNT =	tmate-io
GH_PROJECT =	tmate
GH_TAGNAME =	2.2.1
REVISION =	0
CATEGORIES =	sysutils

MAINTAINER =	Wesley MOUEDINE ASSABY <milo974@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c event_core event_extra msgpackc ncurses ssh util

LIB_DEPENDS =	devel/libevent2 \
		devel/msgpack \
		security/libssh

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-debug

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=       1.15
BUILD_DEPENDS +=        ${MODGNU_AUTOMAKE_DEPENDS} \
                        ${MODGNU_AUTOCONF_DEPENDS}

pre-configure:
	cd ${WRKSRC} && AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} ./autogen.sh
# Fixup any stragglers that would pickup libevent1 from base
	sed -i 's,<event.h>,<event2/event.h>,' ${WRKSRC}/*.[ch]

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tmate ${PREFIX}/bin/

.include <bsd.port.mk>
