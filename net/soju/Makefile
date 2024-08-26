COMMENT =		user-friendly IRC bouncer

MODGO_MODNAME =		codeberg.org/emersion/soju
MODGO_VERSION =		v0.8.2
DISTNAME =		soju-${MODGO_VERSION}

CATEGORIES =		net
HOMEPAGE =		https://soju.im/
MAINTAINER =		Johannes Thyssen Tishman <ports@thyssentishman.com>

# AGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread sqlite3
MODULES =		lang/go
MODGO_FLAGS =		-tags=libsqlite3
BUILD_DEPENDS =		textproc/scdoc
LIB_DEPENDS =		databases/sqlite3

WRKDIST =		${WRKSRC}

post-build:
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -C ${WRKSRC} ${MAKE_FLAGS} \
		doc/soju{,ctl}.1

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/soju.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/sojuctl.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/soju
	${INSTALL_DATA} ${WRKSRC}/config.in ${PREFIX}/share/examples/soju/config

.include "modules.inc"
.include <bsd.port.mk>
