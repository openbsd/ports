# $OpenBSD: Makefile,v 1.3 2020/12/10 16:39:46 kmos Exp $

COMMENT =	curses TLS-only IRC client
VERSION =	1.3
REVISION =	0

DISTNAME =	catgirl-${VERSION}

CATEGORIES =	net

MAINTAINER =	Solene Rapenne <solene@perso.pw>

HOMEPAGE =	https://git.causal.agency/catgirl

# GPLv3+
PERMIT_PACKAGE =Yes

# C11
COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB +=	c curses tls

MASTER_SITES =	https://git.causal.agency/catgirl/snapshot/

NO_TEST =	Yes

.include <bsd.port.mk>
