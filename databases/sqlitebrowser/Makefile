# $OpenBSD: Makefile,v 1.16 2014/07/13 15:43:05 landry Exp $

COMMENT=	graphical interface to sqlite databases
DISTNAME =	sqlb-3.2.0
PKGNAME =	sqlitebrowser-3.2.0
MASTER_SITES =	https://github.com/sqlitebrowser/sqlitebrowser/archive/

CATEGORIES=	databases x11
HOMEPAGE=	http://sqlitebrowser.org/
WRKDIST  =	${WRKDIR}/sqlitebrowser-${DISTNAME}

MODULES=	x11/qt4 devel/cmake

# MPLv2/GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB += QtGui QtNetwork c m pthread sqlite3 stdc++

.include <bsd.port.mk>
