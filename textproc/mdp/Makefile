# $OpenBSD: Makefile,v 1.2 2017/11/12 16:17:16 bcallah Exp $

COMMENT =	command-line based markdown presentation tool

GH_ACCOUNT =	visit1985
GH_PROJECT =	mdp
GH_TAGNAME =	1.0.10

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
