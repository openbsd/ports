# $OpenBSD: Makefile,v 1.2 1999/10/31 06:17:07 turan Exp $

BROKEN=		lots of compilier errors.  redefinitions, and linker errors.

DISTNAME=	catdoc-0.90b4
CATEGORIES=	textproc

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	ftp://ftp.ice.ru/pub/vitus/

RUN_DEPENDS=	wish8.0:${PORTSDIR}/x11/tk80

GNU_CONFIGURE=	yes

#do-install:
#	${INSTALL_PROGRAM} ${WRKSRC}/catdoc ${PREFIX}/bin
#	${INSTALL_SCRIPT} ${WRKSRC}/wordview ${PREFIX}/bin
#	${INSTALL_MAN} ${WRKSRC}/catdoc.1 ${PREFIX}/man/man1/catdoc.1

.include <bsd.port.mk>
