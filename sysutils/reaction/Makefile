COMMENT =	scan logs and take action

MODGO_MODNAME =	framagit.org/ppom/reaction
MODGO_VERSION =	v1.4.1
DISTNAME =	reaction-${MODGO_VERSION}

CATEGORIES =	sysutils
HOMEPAGE =	https://reaction.ppom.me

# AGPL-3.0
PERMIT_PACKAGE =	yes

MODULES =		lang/go

.include "modules.inc"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/reaction
	${INSTALL_DATA} ${WRKSRC}/config/* ${PREFIX}/share/examples/reaction
	${INSTALL_DATA} ${FILESDIR}/authlog.jsonnet ${PREFIX}/share/examples/reaction

.include <bsd.port.mk>
