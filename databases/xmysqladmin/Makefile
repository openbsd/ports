# $FreeBSD: ports/databases/xmysqladmin/Makefile,v 1.25 1999/11/23 02:59:09 billf Exp $
# $OpenBSD: Makefile,v 1.16 2002/05/26 15:09:07 naddy Exp $

COMMENT=	"X11 front end to the mysqladmin command"

DISTNAME=	xmysqladmin-1.0
CATEGORIES=	databases
NEED_VERSION=	1.515

# public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.tcx.se/Contrib/ \
		http://www.buoy.com/mysql/Contrib/ \
		http://web.tryc.on.ca/mysql/Downloads/Contrib/

LIB_DEPENDS=	forms.0::x11/xforms \
		lib/mysql/mysqlclient.10:mysql-client-3.23.*:databases/mysql

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

USE_X11=	yes
ALL_TARGET=	xmysqladmin

.include <bsd.port.mk>
