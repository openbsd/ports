# $OpenBSD: Makefile,v 1.11 2021/11/29 11:20:03 kn Exp $

COMMENT=	terminal UI for tshark, inspired by Wireshark

MODGO_MODNAME=	github.com/gcla/termshark/v2
MODGO_VERSION=	v2.3.0

DISTNAME=	termshark-${MODGO_VERSION}

HOMEPAGE=	https://termshark.io/

CATEGORIES=	net

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go
RUN_DEPENDS=	net/wireshark,-text

# *shrug* builds ok with "go get" but ports build picks up something broken
do-build:
	-cd ${WRKSRC} && ${MODGO_BUILD_CMD} ${ALL_TARGET}/cmd/...
	rm -f ${WRKDIR}/go/pkg/mod/github.com/gcla/term@v0.0.0-20191015020247-31cba2f9f402/termios/pty_openbsd.go
	cd ${WRKSRC} && ${MODGO_BUILD_CMD} ${ALL_TARGET}/cmd/...

.include "modules.inc"
.include <bsd.port.mk>
