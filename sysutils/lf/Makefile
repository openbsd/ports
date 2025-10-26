COMMENT =	terminal file manager inspired by ranger written in Go

MODGO_MODNAME =	github.com/gokcehan/lf
MODGO_VERSION =	v0.0.0-20250919041855-49f2a7c6c420

R =	38
DISTNAME =	lf-${R}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/gokcehan/lf

MAINTAINER =	Igor Zornik <mocheryl@mocheryl.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODGO_LDFLAGS +=	-X 'main.gVersion=r${R}'

MODULES =	lang/go

RUN_DEPENDS =	devel/desktop-file-utils

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lf
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_MAN} ${WRKSRC}/lf.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/etc/lfrc.example ${PREFIX}/share/examples/lf
	${INSTALL_DATA} ${WRKSRC}/lf.desktop ${PREFIX}/share/applications

.include "modules.inc"

.include <bsd.port.mk>
