# $OpenBSD: Makefile,v 1.21 2006/08/01 22:19:46 espie Exp $
# $FreeBSD: ports/databases/xmysqladmin/Makefile,v 1.25 1999/11/23 02:59:09 billf Exp $

BROKEN=		"uses old MySQL API"

COMMENT=	"X11 front end to the mysqladmin command"

DISTNAME=	xmysqladmin-1.0
CATEGORIES=	databases

# public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.tcx.se/Contrib/ \
		http://www.buoy.com/mysql/Contrib/ \
		http://web.tryc.on.ca/mysql/Downloads/Contrib/

LIB_DEPENDS=	forms::x11/xforms \
		lib/mysql/mysqlclient.>=10::databases/mysql \
		jpeg.>=62::graphics/jpeg

USE_X11=	Yes
ALL_TARGET=	xmysqladmin
NO_REGRESS=	Yes

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

.include <bsd.port.mk>
