# $FreeBSD: ports/databases/xmysqladmin/Makefile,v 1.25 1999/11/23 02:59:09 billf Exp $
# $OpenBSD: Makefile,v 1.1.1.1 2000/01/31 06:45:26 form Exp $

DISTNAME=	xmysqladmin-1.0
CATEGORIES=	databases
MASTER_SITES=	http://www.tcx.se/Contrib/ \
		http://www.buoy.com/mysql/Contrib/ \
		http://web.tryc.on.ca/mysql/Downloads/Contrib/

MAINTAINER=	ports@openbsd.org

LIB_DEPENDS=	xforms.0:${PORTSDIR}/x11/xforms \
		mysqlclient.6:${PORTSDIR}/databases/mysql

USE_X11=	yes
ALL_TARGET=	xmysqladmin

.include <bsd.port.mk>
