# New ports collection makefile for:	pgaccess
# Version required:	0.86
# Date created:		6 May 1998 19:57 NOVST
# Whom:			Oleg Form <form@vs.itam.nsc.ru>
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/06 13:10:01 form Exp $
# FreeBSD: Makefile,v 1.11 1998/04/21 21:30:21 andreas Exp
#

DISTNAME=	pgaccess-0.86
CATEGORIES=	databases
MASTER_SITES=	http://www.flex.ro/pgaccess/

MAINTAINER=	form@vs.itam.nsc.ru

RUN_DEPENDS=	${PREFIX}/pgsql/bin/postmaster:${PORTSDIR}/databases/postgresql

NO_BUILD=		yes
NO_WRKSUBDIR=		yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pgaccess.tcl ${PREFIX}/bin/pgaccess

.include <bsd.port.mk>
