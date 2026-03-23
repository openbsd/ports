COMMENT =		MTProxy for Telegram
CATEGORIES =		net
DIST_TUPLE =		github	telemt	telemt	3.3.17	.

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# TELEMT PL 3
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODCARGO_WANTLIB} m

MODULES =		devel/cargo
CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

EXAMPLES_DIR =		${PREFIX}/share/examples/${PKGSTEM}
SUBST_VARS =		EXAMPLES_DIR

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	${INSTALL_DATA} ${WRKSRC}/config*.toml ${EXAMPLES_DIR}/

.include "crates.inc"
.include <bsd.port.mk>
