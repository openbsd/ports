# $FreeBSD: ports/databases/xmysql/Makefile,v 1.22 1999/08/31 06:41:26 mharo Exp $
# $OpenBSD: Makefile,v 1.1.1.1 2000/01/31 06:44:11 form Exp $

DISTNAME=	xmysql-1.9
CATEGORIES=	databases
MASTER_SITES=	http://www.tcx.se/Contrib/ \
		http://www.buoy.com/mysql/Contrib/ \
		http://web.tryc.on.ca/mysql/Downloads/Contrib/

MAINTAINER=	ports@openbsd.org

LIB_DEPENDS=	xforms.0:${PORTSDIR}/x11/xforms \
		mysqlclient.6:${PORTSDIR}/databases/mysql

USE_X11=	yes

.include <bsd.port.mk>
