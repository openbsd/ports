# $OpenBSD: Makefile,v 1.15 2002/03/21 20:46:24 espie Exp $
# $FreeBSD: ports/databases/xmysql/Makefile,v 1.22 1999/08/31 06:41:26 mharo Exp $

COMMENT=	"X11 front end to the MySQL database engine"

DISTNAME=	xmysql-1.9
CATEGORIES=	databases
NEED_VERSION=	1.515
MASTER_SITES=	http://www.tcx.se/Contrib/ \
		http://www.buoy.com/mysql/Contrib/ \
		http://web.tryc.on.ca/mysql/Downloads/Contrib/

LIB_DEPENDS=	xforms.0::x11/xforms \
		lib/mysql/mysqlclient.10:mysql-client-3.23.*:databases/mysql

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

USE_X11=	yes

.include <bsd.port.mk>
