COMMENT =		look-like-nothing obfuscation protocol

MODGO_MODNAME =		gitlab.torproject.org/tpo/anti-censorship/pluggable-transports/lyrebird

MODGO_VERSION =		v0.0.0-20251209174042-451c02db6504

V =			0.8.0

DISTNAME =		lyrebird-${MODGO_VERSION}

PKGNAME =		lyrebird-${V}

CATEGORIES =		net www

HOMEPAGE =		https://gitlab.torproject.org/tpo/anti-censorship/pluggable-transports/lyrebird

MAINTAINER =		Douglas Silva <doug.hs@proton.me>

# GPLv3+ (due to x25519ell2, meeklite; other code is BSD)
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES +=		lang/go

MODGO_LDFLAGS =		-X 'main.lyrebirdVersion=${V}'

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/lyrebird.1 \
		${PREFIX}/man/man1/lyrebird.1

.include "modules.inc"
.include <bsd.port.mk>
