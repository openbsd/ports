# $OpenBSD: Makefile,v 1.5 1999/04/01 06:20:06 brad Exp $
# $FreeBSD: Makefile,v 1.11 1998/04/21 21:30:21 andreas Exp $

DISTNAME=	pgaccess-0.88
CATEGORIES=	databases

MAINTAINER=	ports@openbsd.org

MASTER_SITES=	http://www.flex.ro/pgaccess/

RUN_DEPENDS=	${PREFIX}/pgsql/bin/postmaster:${PORTSDIR}/databases/postgresql

NO_BUILD=	yes
NO_WRKSUBDIR=	yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pgaccess.tcl ${PREFIX}/bin/pgaccess

.include <bsd.port.mk>
