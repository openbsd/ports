# $OpenBSD: Makefile,v 1.4 1999/09/28 17:58:35 brad Exp $

DISTNAME=	connect4
PKGNAME=	connect4-3.2
CATEGORIES=	games
MASTER_SITES=	ftp://scitsc.wlv.ac.uk/pub/infomagic/usenet/games/volume6/
EXTRACT_SUFX=		# empty

NEED_VERSION=	1.91

EXTRACT_CMD=		gunshar
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS=	# empty

MAINTAINER=	angelos@openbsd.org

BUILD_DEPENDS=	gunshar:${PORTSDIR}/archivers/gshar+gunshar

NO_WRKSUBDIR=	yes

MANDIR=		${PREFIX}/man/man
LIBDIR=		${PREFIX}/lib

do-install:
	@${MKDIR} ${LIBDIR}/connect4
	${INSTALL_PROGRAM} ${WRKSRC}/c4 ${PREFIX}/bin/connect4
	${INSTALL_DATA} -m 666 /dev/null ${LIBDIR}/connect4/scores
	${INSTALL_MAN} ${FILESDIR}/connect4.6 ${MANDIR}6/

.include <bsd.port.mk>
