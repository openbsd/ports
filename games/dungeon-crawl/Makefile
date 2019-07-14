# $OpenBSD: Makefile,v 1.14 2019/07/14 00:39:36 naddy Exp $

COMMENT=	dungeon crawl
CATEGORIES=	games

HOMEPAGE=	http://www.dungeoncrawl.org/
MASTER_SITES=	ftp://ftp.dungeoncrawl.org/dev/4.0.x/src/
DISTNAME=	dc400b26-src
EXTRACT_SUFX=	.tbz2
V=		4.0.0b26
PKGNAME=	dungeon-crawl-$V
REVISION =	5

BUILD_DEPENDS+=	archivers/bzip2

EXTRACT_CASES+=	*.tbz2) ${BZIP2} -dc ${FULLDISTDIR}/$$archive | ${TAR} xf -;;


WRKSRC=	${WRKDIST}/source
MAKE_FILE=${WRKSRC}/makefile.bsd
MAKE_FLAGS=EXTRA_FLAGS='${CXXFLAGS} -DSAVE_DIR_PATH=\"${TRUEPREFIX}/lib/dungeon-crawl-$V/\"' CXX='${CXX}' LDFLAGS=

ALL_TARGET=debug

WANTLIB=	c curses m ${COMPILER_LIBCXX}

COMPILER =	base-clang ports-gcc base-gcc


# Almost nethack... http://www.dungeoncrawl.org/?d.l

PERMIT_PACKAGE=Yes
DOCDIR=${PREFIX}/share/doc/dungeon-crawl-$V


do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/crawl ${PREFIX}/bin/dungeon-crawl-$V
	chgrp games ${PREFIX}/bin/dungeon-crawl-$V
	chmod g+s ${PREFIX}/bin/dungeon-crawl-$V
	${INSTALL_DATA_DIR} ${PREFIX}/lib/dungeon-crawl-$V
	chgrp games ${PREFIX}/lib/dungeon-crawl-$V
	chmod g+w ${PREFIX}/lib/dungeon-crawl-$V
	${INSTALL_MAN} ${WRKDIST}/docs/crawl.6 ${PREFIX}/man/man6/dungeon-crawl-$V.6
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/licence.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/init.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/macro.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/docs/buglist.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/docs/changes* ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/docs/crawl.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/docs/todo.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/docs/versions.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/readme.txt ${DOCDIR}/quickstart

NO_TEST=Yes

SUBST_VARS=V
.include <bsd.port.mk>
