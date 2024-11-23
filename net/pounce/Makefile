COMMENT =	multi-client, TLS-only IRC bouncer

DISTNAME =	pounce-3.1
REVISION =	1

CATEGORIES =	net

HOMEPAGE =	https://git.causal.agency/pounce/about/

MAINTAINER =	Sebastien Marie <semarie@kapouay.eu.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

# uses pledge() and unveil()
WANTLIB += c curl sqlite3 tls

SITES =		https://git.causal.agency/pounce/snapshot/

LIB_DEPENDS +=	databases/sqlite3 \
		net/curl

# C11
COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

FAKE_FLAGS =	PREFIX=${TRUEPREFIX}

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--enable-notify \
			--enable-palaver

NO_TEST =	Yes

.include <bsd.port.mk>
