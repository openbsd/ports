COMMENT =		coding agent with a rich terminal UI

MODGO_MODNAME =		github.com/charmbracelet/crush
MODGO_VERSION =		v0.96.1

DISTNAME =		crush-${MODGO_VERSION}
WRKDIST =		${WRKDIR}/${MODGO_MODNAME}@${MODGO_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/charmbracelet/crush

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

MODGO_LDFLAGS +=	-X github.com/charmbracelet/crush/internal/version.Version=${MODGO_VERSION}

.include "modules.inc"
.include <bsd.port.mk>
