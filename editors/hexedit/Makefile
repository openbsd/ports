# New ports collection makefile for:	hexedit
# Version required:			0.9.3
# Date created:				11 August 1998
# Whom:					Oleg Safiullin <form@vs.itam.nsc.ru>
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/08/11 10:14:11 form Exp $
# FreeBSD: Makefile,v 1.1.1.1 1998/08/10 00:31:40 steve Exp
#

DISTNAME=	hexedit-0.9.3
CATEGORIES=	editors
MASTER_SITES=	http://www.chez.com/prigaux/
EXTRACT_SUFX=	.src.tgz

MAINTAINER=	form@vs.itam.nsc.ru

ALL_TARGET=
WRKSRC=		${WRKDIR}/hexedit

MAN1=		hexedit.1

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/hexedit ${PREFIX}/bin
	@${INSTALL_MAN} ${WRKSRC}/hexedit.1 ${PREFIX}/man/man1
.if !defined(NOPORTDOCS)
	@${MKDIR} ${PREFIX}/share/doc/hexedit
.for file in COPYING Changes TODO
	@${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/hexedit
.endfor
.endif

.include <bsd.port.mk>
