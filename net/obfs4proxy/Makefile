# $OpenBSD: Makefile,v 1.5 2019/07/12 20:48:34 sthen Exp $

COMMENT =		a look-like nothing obfuscation protocol for TCP

DISTNAME =		obfs4proxy-0.0.7

REVISION =		2

MASTER_SITES =	https://people.torproject.org/~yawning/releases/obfs4proxy/
EXTRACT_SUFX =		.tar.xz

CATEGORIES =		net www

HOMEPAGE = \
https://gitweb.torproject.org/pluggable-transports/obfs4.git/tree/README.md

MAINTAINER =		Sean Levy <attila@stalphonsos.com>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES +=		lang/go
ALL_TARGET_BASE =	git.torproject.org/pluggable-transports/obfs4.git
WRKSRC =		${MODGO_WORKSPACE}/src/${ALL_TARGET_BASE}
ALL_TARGET =		${ALL_TARGET_BASE}/obfs4proxy \
			${ALL_TARGET_BASE}/common/log \
			${ALL_TARGET_BASE}/common/socks5 \
			${ALL_TARGET_BASE}/transports \
			${ALL_TARGET_BASE}/transports/base

BUILD_DEPENDS +=	net/go-net \
			security/go-crypto \
			security/go-ed25519 \
			security/go-siphash \
			devel/go-goptlib

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/obfs4proxy.1 \
		${PREFIX}/man/man1/obfs4proxy.1

.include <bsd.port.mk>
