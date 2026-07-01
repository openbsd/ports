COMMENT =		coding agent with a rich terminal UI

MODGO_MODNAME =		github.com/charmbracelet/crush
MODGO_VERSION =		v0.80.0

DISTNAME =		crush-${MODGO_VERSION}
WRKDIST =		${WRKDIR}/${MODGO_MODNAME}@${MODGO_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/charmbracelet/crush

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

.include "modules.inc"
.include <bsd.port.mk>
