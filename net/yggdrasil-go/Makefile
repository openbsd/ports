COMMENT =	experimental fully end-to-end encrypted IPv6 network

MODGO_MODNAME =	github.com/yggdrasil-network/yggdrasil-go
MODGO_VERSION =	v0.5.9

DISTNAME =	yggdrasil-go-${MODGO_VERSION}
REVISION =	0

# make patch and update-patches work;  does the go module's default need fixing?
WRKDIST =		${WRKSRC}
SITES.fix =		https://${MODGO_MODNAME}/
# merged "Create admin socket synchronously before privdrop (#1201)"
PATCHFILES.fix =	privdrop-wait-fix-{commit/}8346800.patch
# merged "Set groups when dropping privileges to not leak supplementary group access (#1202)
PATCHFILES.fix +=	fix-group-access-leak-{commit/}75d2080.patch
PATCH_DIST_STRIP =	-p1

CATEGORIES =	net

HOMEPAGE =	https://yggdrasil-network.github.io/

# LGPL-3.0
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

MODULES =		lang/go

WANTLIB += c pthread

RUN_DEPENDS =	textproc/jq

_BUILD =		${MODGO_MODNAME}/src/version.build
# buildName appears in -version output and as syslogd(8) tag
MODGO_LDFLAGS =		-X ${_BUILD}Name=${PKGSTEM} \
			-X ${_BUILD}Version=${MODGO_VERSION:v%=:Q}

DOC_DIR =	${PREFIX}/share/doc/${PKGSTEM}

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOC_DIR}/
	mv ${PREFIX}/bin/{,yggdrasil-}genkeys

.include "modules.inc"
.include <bsd.port.mk>
