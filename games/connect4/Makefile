# $OpenBSD: Makefile,v 1.5 2000/02/10 23:14:31 espie Exp $

DISTNAME=	connect4
PKGNAME=	connect4-3.2
CATEGORIES=	games
MASTER_SITES=	ftp://scitsc.wlv.ac.uk/pub/infomagic/usenet/games/volume6/
EXTRACT_SUFX=		# empty

NEED_VERSION=	1.191

EXTRACT_CMD=		gunshar
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS=	# empty

MAINTAINER=	angelos@openbsd.org

BUILD_DEPENDS=	gunshar:${PORTSDIR}/archivers/gshar+gunshar

WRKDIST=	${WRKDIR}

MANDIR=		${PREFIX}/man/man
LIBDIR=		${PREFIX}/lib

do-install:
	@${INSTALL_DATA_DIR} ${LIBDIR}/connect4
	${INSTALL_PROGRAM} ${WRKSRC}/c4 ${PREFIX}/bin/connect4
	${INSTALL_DATA} -m 666 /dev/null ${LIBDIR}/connect4/scores
	${INSTALL_MAN} ${FILESDIR}/connect4.6 ${MANDIR}6/

.include <bsd.port.mk>
