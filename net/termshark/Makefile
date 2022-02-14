# $OpenBSD: Makefile,v 1.12 2022/02/14 10:56:38 sthen Exp $

BROKEN-arm64=	system/dumpcapext_arm64.go:25:6: DumpcapExt redeclared in this block

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
