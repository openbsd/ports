# $OpenBSD: Makefile,v 1.2 1998/11/09 01:49:54 marc Exp $
#

DISTNAME=	connect4
PKGNAME=	connect4-3.2
CATEGORIES=	games

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	ftp://ftp.gu.kiev.ua/pub/cdrom5/games/volume6/ \
		ftp://scitsc.wlv.ac.uk/pub/infomagic/usenet/games/volume6/
EXTRACT_SUFX=	""
EXTRACT_CMD=		gunshar
EXTRACT_BEFORE_ARGS=	""

BUILD_DEPENDS=		gunshar:${PORTSDIR}/archivers/gshar+gunshar

NO_WRKSUBDIR=	yes

MANDIR=		${PREFIX}/man/man
LIBDIR=		${PREFIX}/lib

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/c4 ${PREFIX}/bin/connect4
		${MKDIR} ${LIBDIR}/connect4
		${INSTALL_DATA} -m 666 /dev/null ${LIBDIR}/connect4/scores
		${INSTALL_MAN} ${FILESDIR}/connect4.6 ${MANDIR}6/

.include <bsd.port.mk>
