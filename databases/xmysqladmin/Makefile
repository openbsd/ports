# $FreeBSD: ports/databases/xmysqladmin/Makefile,v 1.25 1999/11/23 02:59:09 billf Exp $
# $OpenBSD: Makefile,v 1.8 2000/10/22 15:41:43 espie Exp $

DISTNAME=	xmysqladmin-1.0
CATEGORIES=	databases
NEED_VERSION=	 1.230
MASTER_SITES=	http://www.tcx.se/Contrib/ \
		http://www.buoy.com/mysql/Contrib/ \
		http://web.tryc.on.ca/mysql/Downloads/Contrib/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

LIB_DEPENDS=	xforms.0::x11/xforms \
		mysqlclient.6::databases/mysql

USE_X11=	yes
ALL_TARGET=	xmysqladmin

.include <bsd.port.mk>
