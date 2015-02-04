# $OpenBSD: Makefile,v 1.21 2015/02/04 07:00:15 benoit Exp $

COMMENT =	Exif jpeg camera setting parser and thumbnail remover

DISTNAME =	jhead-3.00
CATEGORIES =	graphics

HOMEPAGE =	http://www.sentex.net/~mwandel/jhead/
MASTER_SITES =	${HOMEPAGE}

MAINTAINER=	Benoit Lecocq <benoit@openbsd.org>

# public domain
PERMIT_PACKAGE_CDROM =	Yes

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
