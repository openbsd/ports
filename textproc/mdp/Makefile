# $OpenBSD: Makefile,v 1.1.1.1 2017/02/04 06:16:44 rpointel Exp $

COMMENT =	command-line based markdown presentation tool

VERSION = 	1.0.9
DISTNAME =	mdp-${VERSION}

GH_ACCOUNT =	visit1985
GH_PROJECT =	mdp
GH_TAGNAME =	${VERSION}

CATEGORIES =	textproc

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c ncursesw

MAKE_FLAGS =		PREFIX=${PREFIX}

USE_GMAKE =		Yes

post-install:
	mv ${PREFIX}/share/man/* ${PREFIX}/man/
	rmdir ${PREFIX}/share/man

NO_TEST =		Yes

.include <bsd.port.mk>
