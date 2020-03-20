# $OpenBSD: Makefile,v 1.7 2020/03/20 16:44:23 naddy Exp $

COMMENT =		text adventure game

PKGNAME =		dungeon-2.7s
DISTNAME =		dungn27s
EXTRACT_SUFX =		.zip
REVISION =		1

CATEGORIES =		games

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# Commercial use prohibited.
PERMIT_PACKAGE =	Yes

WANTLIB += c curses

MASTER_SITES =		http://mirror.ifarchive.org/if-archive/games/source/ \
			ftp://ftp.ifarchive.org/if-archive/games/source/ \
			ftp://ftp.funet.fi/pub/misc/if-archive/games/source/ \
			http://www.vaxdungeon.com/vax-dungeon/Archive/dungeon/ \
			http://ifarchive.flavorplex.com/if-archive/games/source/

MAKE_FLAGS =		CC="${CC}"
ALL_TARGET =		dungeon

WRKDIST =		${WRKDIR}

post-extract:
	find ${WRKSRC} -type f -exec perl -pi -e 's/\015//g; s/\032//g' {} +
	(cd ${WRKSRC}; for f in `awk '{ print $$1 }' MANIFEST | tail +3`; do \
		mv `echo $$f | tr a-z A-Z` $$f; done)

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/dungeon

post-install:
	${INSTALL_MAN} ${WRKSRC}/dungeon.6 ${PREFIX}/man/man6
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dungeon
	${INSTALL_DATA} ${WRKSRC}/History ${PREFIX}/share/doc/dungeon

.include <bsd.port.mk>
