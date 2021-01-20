# $OpenBSD: Makefile,v 1.5 2021/01/20 07:31:55 kn Exp $

COMMENT =	curses TLS-only IRC client
DISTNAME =	catgirl-1.5

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

.include <bsd.port.mk>
