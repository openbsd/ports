# $FreeBSD: ports/databases/xmysql/Makefile,v 1.22 1999/08/31 06:41:26 mharo Exp $
# $OpenBSD: Makefile,v 1.3 2000/03/14 05:08:48 turan Exp $

DISTNAME=	xmysql-1.9
CATEGORIES=	databases
NEED_VERSION=	1.223
MASTER_SITES=	http://www.tcx.se/Contrib/ \
		http://www.buoy.com/mysql/Contrib/ \
		http://web.tryc.on.ca/mysql/Downloads/Contrib/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	xforms.0:x11/xforms \
		mysqlclient.6:databases/mysql

USE_X11=	yes

.include <bsd.port.mk>
