# $OpenBSD: Makefile,v 1.12 2021/11/27 15:25:14 kn Exp $

COMMENT =	curses TLS-only IRC client
DISTNAME =	catgirl-1.9a
REVISION =	0

CATEGORIES =	net

MAINTAINER =	Solene Rapenne <solene@perso.pw> \
		Klemens Nanni <kn@openbsd.org>

HOMEPAGE =	https://git.causal.agency/catgirl

# GPLv3+
PERMIT_PACKAGE =Yes

# C11
COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

# uses pledge() and unveil()
WANTLIB +=	c curses tls

DEBUG_PACKAGES =${BUILD_PACKAGES}

MASTER_SITES =	https://git.causal.agency/catgirl/snapshot/

CONFIGURE_STYLE =	simple

NO_TEST =	Yes

FAKE_FLAGS =	PREFIX=${PREFIX}

EXAMPLES =	${PREFIX}/share/examples/catgirl

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/scripts/chat.tmux.conf ${EXAMPLES}/

.include <bsd.port.mk>
