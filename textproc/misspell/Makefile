# $OpenBSD: Makefile,v 1.2 2019/07/12 20:50:01 sthen Exp $

COMMENT =	correct commonly misspelled English words in source files

GH_ACCOUNT =	client9
GH_PROJECT =	misspell
GH_TAGNAME =	v0.3.4

CATEGORIES =	textproc

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

do-build:
	${MODGO_BUILD_CMD} ${ALL_TARGET}/cmd/misspell

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/misspell
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/misspell

.include <bsd.port.mk>
