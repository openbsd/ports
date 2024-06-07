COMMENT =	security checker for Go projects

MODGO_MODNAME =	github.com/securego/gosec/v2
MODGO_VERSION =	v2.20.0

DISTNAME =	gosec-${MODGO_VERSION}

# https://github.com/securego/gosec
HOMEPAGE =	https://securego.io/

CATEGORIES =	security devel

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go

MODGO_LDFLAGS =	-X main.Version=${MODGO_VERSION:S/v//}

.include "modules.inc"

.include <bsd.port.mk>
