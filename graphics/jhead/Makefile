# $OpenBSD: Makefile,v 1.27 2021/11/04 15:12:29 mestre Exp $

COMMENT =	Exif jpeg camera setting parser and thumbnail remover

GH_ACCOUNT =	Matthias-Wandel
GH_PROJECT =	jhead
GH_TAGNAME =	3.06.0.1

CATEGORIES =	graphics

HOMEPAGE =	https://www.sentex.net/~mwandel/jhead/

MAINTAINER=	Benoit Lecocq <benoit@openbsd.org>

# public domain
PERMIT_PACKAGE =	Yes

FIX_CRLF_FILES =	gpsinfo.c

WANTLIB =	c m

NO_TEST =	Yes

RUN_DEPENDS =	graphics/jpeg

MAKE_FILE =	makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/jhead ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/jhead.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jhead
	${INSTALL_DATA} ${WRKSRC}/usage.html ${PREFIX}/share/doc/jhead

.include <bsd.port.mk>
