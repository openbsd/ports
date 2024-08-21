COMMENT =	terminal file manager inspired by ranger written in Go

MODGO_MODNAME =	github.com/gokcehan/lf
MODGO_VERSION =	v0.0.0-20240331195418-d26eb0108a63

R =		32
DISTNAME =	lf-${R}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/gokcehan/lf

MAINTAINER =	Chang, Chu-Kuan <cckuan@changchukuan.name>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go

RUN_DEPENDS =		devel/desktop-file-utils

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/go/bin/lf ${PREFIX}/bin
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lf
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_MAN} ${WRKSRC}/lf.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/etc/lfrc.example ${PREFIX}/share/examples/lf
	${INSTALL_DATA} ${WRKSRC}/lf.desktop ${PREFIX}/share/applications

.include "modules.inc"
.include <bsd.port.mk>
