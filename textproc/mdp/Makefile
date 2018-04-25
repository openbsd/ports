# $OpenBSD: Makefile,v 1.3 2018/04/25 12:55:16 naddy Exp $

COMMENT =	command-line based markdown presentation tool

GH_ACCOUNT =	visit1985
GH_PROJECT =	mdp
GH_TAGNAME =	1.0.10
REVISION =	0

CATEGORIES =	textproc

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c ncursesw

MAKE_FLAGS =		PREFIX=${PREFIX}

USE_GMAKE =		Yes

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mdp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/mdp.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
