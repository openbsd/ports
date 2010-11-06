# $OpenBSD: Makefile,v 1.28 2010/11/06 22:50:03 espie Exp $

COMMENT=	X11 front end to the MySQL database engine

DISTNAME=	xmysql-1.10
PKGNAME=	${DISTNAME}p0
CATEGORIES=	databases

MASTER_SITES=	${MASTER_SITE_BACKUP}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		GL X11 Xext Xpm c m pthread-stubs xcb

LIB_DEPENDS=	::x11/xforms \
		::databases/mysql \
		::graphics/jpeg
WANTLIB +=	forms lib/mysql/mysqlclient.>=10 jpeg.>=62

NO_REGRESS=	Yes

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

.include <bsd.port.mk>
