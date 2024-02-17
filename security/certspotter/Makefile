# LP64 archs with Go:
ONLY_FOR_ARCHS = aarch64 amd64 mips64 riscv64

COMMENT =       Certificate Transparency log monitor

V =		0.18.0
MODGO_MODNAME =	software.sslmate.com/src/certspotter
MODGO_VERSION =	v${V}

DISTNAME =	certspotter-${MODGO_VERSION}

MAINTAINER =	Renaud Allard <renaud@allard.it>

HOMEPAGE =	https://github.com/SSLMate/certspotter

CATEGORIES =	security

# Mozilla Public License Version 2.0
PERMIT_PACKAGE =        Yes

MODULES =	lang/go

WANTLIB +=	c pthread

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/certspotter
	${INSTALL_DATA} ${WRKSRC}/*.md ${PREFIX}/share/doc/certspotter

.include "modules.inc"
.include <bsd.port.mk>
