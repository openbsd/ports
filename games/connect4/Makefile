# $OpenBSD: Makefile,v 1.22 2003/03/31 18:00:40 sturm Exp $

COMMENT=	"curses version of the classic game"

DISTNAME=	connect4
PKGNAME=	connect4-3.2
CATEGORIES=	games

# License: NONE
PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

MASTER_SITES= 	ftp://ftp.uu.net/usenet/comp.sources.games/volume6/
EXTRACT_SUFX=	.Z
EXTRACT_CASES=	*.Z) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | \
		${_PERL_FIX_SHAR} | /bin/sh ;;

MAKE_FLAGS=	CFLAGS='${CFLAGS} -DSCOREFILE=\"/var/games/connect4.scores\"'

ALL_TARGET=	c4

WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/c4 ${PREFIX}/bin/connect4
	@chown root.games ${PREFIX}/bin/connect4
	@chmod 2755 ${PREFIX}/bin/connect4
	${INSTALL_MAN} ${FILESDIR}/connect4.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
