# $OpenBSD: Makefile,v 1.16 2001/08/05 20:46:50 jsyn Exp $

COMMENT=	"curses version of the classic game"

DISTNAME=	connect4
PKGNAME=	connect4-3.2
CATEGORIES=	games
NEED_VERSION=	1.402
MASTER_SITES=	ftp://scitsc.wlv.ac.uk/pub/infomagic/usenet/games/volume6/
EXTRACT_SUFX=		# empty

EXTRACT_CASES=	connect4) ${_SED_FIX_SHAR} ${FULLDISTDIR}/$$archive | /bin/sh;;

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

# License: NONE
PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

MAKE_FLAGS=	CFLAGS='${CFLAGS} -DSCOREFILE=\"${SCOREFILE}\"'

WRKDIST=	${WRKDIR}

SCOREFILE=	${PREFIX}/lib/connect4/scores
MANDIR=		${PREFIX}/man/man
LIBDIR=		${PREFIX}/lib

do-install:
	@${INSTALL_DATA_DIR} ${LIBDIR}/connect4
	${INSTALL_PROGRAM} ${WRKBUILD}/c4 ${PREFIX}/bin/connect4
	${INSTALL_MAN} ${FILESDIR}/connect4.6 ${MANDIR}6/

.include <bsd.port.mk>
