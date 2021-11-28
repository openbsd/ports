# $OpenBSD: Makefile,v 1.2 2021/11/28 09:52:53 op Exp $

COMMENT =	multi-client, TLS-only IRC bouncer

DISTNAME =	pounce-3.0

CATEGORIES =	net

HOMEPAGE =	https://git.causal.agency/pounce/about/

MAINTAINER =	Omar Polo <op@omarpolo.com>

# GPLv3+
PERMIT_PACKAGE =	Yes

# uses pledge() and unveil()
WANTLIB += c tls

MASTER_SITES =		https://git.causal.agency/pounce/snapshot/

# C11
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

FAKE_FLAGS =		PREFIX=${TRUEPREFIX}

CONFIGURE_STYLE =	simple

NO_TEST =		Yes

.include <bsd.port.mk>
