COMMENT =	experimental fully end-to-end encrypted IPv6 network

MODGO_MODNAME =	github.com/yggdrasil-network/yggdrasil-go
MODGO_VERSION =	v0.5.10
REVISION =	0

DISTNAME =	yggdrasil-go-${MODGO_VERSION}

# make patch and update-patches work;  does the go module's default need fixing?
WRKDIST =		${WRKSRC}
SITES.gh =		https://${MODGO_MODNAME}/
# merged "Use unveil(2) on OpenBSD (#1194)"
PATCHFILES.gh =		unveil-daemon-{commit/}83ec58a.patch
# merged "genkeys, yggdrasilctl: Use pledge(2) on OpenBSD #1193"
PATCHFILES.gh +=	pledge-cli-{commit/}2d58774.patch
PATCH_DIST_STRIP =	-p1

CATEGORIES =	net

HOMEPAGE =	https://yggdrasil-network.github.io/

# LGPL-3.0
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

MODULES =		lang/go

# uses pledge() and unveil()
WANTLIB =		c pthread

RUN_DEPENDS =	textproc/jq

_BUILD =		${MODGO_MODNAME}/src/version.build
# buildName appears in -version output and as syslogd(8) tag
MODGO_LDFLAGS =		-X ${_BUILD}Name=${PKGSTEM} \
			-X ${_BUILD}Version=${MODGO_VERSION:v%=:Q}+patches

DOC_DIR =	${PREFIX}/share/doc/${PKGSTEM}

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOC_DIR}/
	mv ${PREFIX}/bin/{,yggdrasil-}genkeys

.include "modules.inc"

# for pledge, added via patch, but not picked up by modgo-gen-modules
_PROTECT =		suah.dev/protect	v1.2.4
MODGO_MODULES +=	${_PROTECT}
MODGO_MODFILES +=	${_PROTECT}
.include <bsd.port.mk>
