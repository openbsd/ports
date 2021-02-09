# $OpenBSD: Makefile,v 1.6 2021/02/09 10:49:51 kn Exp $

COMMENT =	curses TLS-only IRC client
DISTNAME =	catgirl-1.6

CATEGORIES =	net

MAINTAINER =	Solene Rapenne <solene@perso.pw>

HOMEPAGE =	https://git.causal.agency/catgirl

# GPLv3+
PERMIT_PACKAGE =Yes

# C11
COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

# uses pledge()
WANTLIB +=	c curses tls

MASTER_SITES =	https://git.causal.agency/catgirl/snapshot/

NO_TEST =	Yes

FAKE_FLAGS =	PREFIX=${PREFIX} \
		MANDIR=${PREFIX}/man

EXAMPLES =	${PREFIX}/share/examples/catgirl

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/scripts/chat.tmux.conf ${EXAMPLES}/

.include <bsd.port.mk>
