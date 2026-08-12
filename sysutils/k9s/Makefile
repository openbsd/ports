# modernc.org/sqlite -> no 32-bit
NOT_FOR_ARCHS = arm i386

COMMENT =	tui to manage kubernetes cluster

V =		0.51.0
DISTNAME =	k9s-${V}

CATEGORIES =	sysutils

HOMEPAGE =	https://k9scli.io/

SITES =		https://www.rsadowski.de/pub/distfiles/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

MODGO_GO111MODULE =	on
MODGO_TYPE =		bin

ALL_TARGET =		github.com/derailed/k9s

MODGO_LDFLAGS +=	-X ${ALL_TARGET}/cmd.version=v${V} \
			-X ${ALL_TARGET}/cmd.commit=558caafe \
			-X ${ALL_TARGET}/cmd.date=""

WRKDIST =		${WRKDIR}/k9s-${V}

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/go/bin/k9s ${PREFIX}/bin/

.include <bsd.port.mk>
