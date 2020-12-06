# $OpenBSD: Makefile,v 1.1.1.1 2020/12/06 23:02:58 solene Exp $

COMMENT =	curses TLS-only IRC client
VERSION =	1.3

DISTNAME =	catgirl-${VERSION}

CATEGORIES =	net

MAINTAINER =	Solene Rapenne <solene@perso.pw>

HOMEPAGE =	https://git.causal.agency/catgirl

# GPLv3+
PERMIT_PACKAGE =Yes

WANTLIB +=	c curses tls

MASTER_SITES =	https://git.causal.agency/catgirl/snapshot/

NO_TEST =	Yes

.include <bsd.port.mk>
