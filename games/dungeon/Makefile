# $OpenBSD: Makefile,v 1.2 2011/12/06 14:12:19 sthen Exp $

COMMENT =		text adventure game

PKGNAME =		dungeon-2.7s
DISTNAME =		dungn27s
EXTRACT_SUFX =		.zip

CATEGORIES =		games

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Commercial use prohibited.
PERMIT_PACKAGE_CDROM =	no commercial use
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =no commercial use
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c termcap

MASTER_SITES =		http://mirror.ifarchive.org/if-archive/games/source/ \
			ftp://ftp.ifarchive.org/if-archive/games/source/ \
			ftp://ftp.funet.fi/pub/misc/if-archive/games/source/ \
			http://www.vaxdungeon.com/vax-dungeon/Archive/dungeon/ \
			http://ifarchive.flavorplex.com/if-archive/games/source/

MAKE_FLAGS =		CC="${CC}"
ALL_TARGET =		dungeon

WRKDIST =		${WRKDIR}

post-extract:
	find ${WRKSRC} -type f | xargs perl -pi -e 's/\015//g; s/\032//g' 
	(cd ${WRKSRC}; for f in `awk '{ print $$1 }' MANIFEST | tail +3`; do \
		mv `echo $$f | tr a-z A-Z` $$f; done)

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/dungeon

post-install:
	${INSTALL_MAN} ${WRKSRC}/dungeon.6 ${PREFIX}/man/man6
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dungeon
	${INSTALL_DATA} ${WRKSRC}/History ${PREFIX}/share/doc/dungeon

.include <bsd.port.mk>
