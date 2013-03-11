# $OpenBSD: Makefile,v 1.33 2013/03/11 02:52:09 espie Exp $

COMMENT=	X11 front end to the MySQL database engine

DISTNAME=	xmysql-1.10
REVISION =	3
CATEGORIES=	databases

MASTER_SITES=	${MASTER_SITE_BACKUP}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		GL X11 Xext Xpm c m

LIB_DEPENDS=	x11/xforms \
		databases/mysql \
		graphics/jpeg
WANTLIB +=	forms mysqlclient>=10 jpeg>=62

NO_TEST=	Yes

.include <bsd.port.mk>
