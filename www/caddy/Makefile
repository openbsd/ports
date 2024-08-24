COMMENT =	extensible HTTP/1-2-3 web server

PKGNAME =	caddy-${V}
V =		2.8.4

CATEGORIES =	www

HOMEPAGE =	https://caddyserver.com/

# Apache-2.0
PERMIT_PACKAGE =	Yes

WANTLIB =	c pthread

SITES =		https://github.com/caddyserver/caddy/releases/download/v${V}/
DISTNAME =	caddy_${V}_buildable-artifact
WRKDIST =	${WRKDIR}

MODULES =		lang/go

MODGO_WORKSPACE =	${WRKDIR}
WRKSRC =		${WRKDIST}

CONFIGURE_STYLE =	none

SEPARATE_BUILD =	No

NO_TEST =	Yes

post-extract:
	mv ${WRKSRC}/vendor ${WRKSRC}/src

do-build:
	cd ${WRKSRC} && ${MODGO_CMD} build ${MODGO_FLAGS}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/caddy-${V} \
		${PREFIX}/bin/caddy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/caddy
	${INSTALL_DATA} files/Caddyfile \
		${PREFIX}/share/examples/caddy

.include <bsd.port.mk>
