COMMENT =		various tools for the Go programming language

MODGO_MODNAME =		golang.org/x/tools
MODGO_VERSION =		v0.30.0

DISTNAME =		go-tools-${MODGO_VERSION}
EPOCH =			0

CATEGORIES =		devel
HOMEPAGE =		https://pkg.go.dev/golang.org/x/tools/cmd

# 3-clause BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go

RUN_DEPENDS =		${MODGO_RUN_DEPENDS}

.include "modules.inc"
.include <bsd.port.mk>
