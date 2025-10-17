COMMENT=	various tools for the Go programming language

MODGO_MODNAME=	golang.org/x/tools
MODGO_VERSION=	v0.38.0

DISTNAME=	go-tools-${MODGO_VERSION}

CATEGORIES=	devel
HOMEPAGE=	https://pkg.go.dev/golang.org/x/tools/cmd

EPOCH=		0

# 3-clause BSD
PERMIT_PACKAGE=	Yes

WANTLIB +=	c pthread

MODULES=	lang/go

RUN_DEPENDS=	${MODGO_RUN_DEPENDS}

.include "modules.inc"
.include <bsd.port.mk>
