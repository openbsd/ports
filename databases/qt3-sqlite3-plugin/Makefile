# $OpenBSD: Makefile,v 1.21 2017/07/26 22:45:17 sthen Exp $

COMMENT=	qt3 sqlite3 plugin
CATEGORIES=	databases devel x11

HOMEPAGE=	http://kde-apps.org/content/show.php?content=23011
MASTER_SITES=	http://kde-apps.org/CONTENT/content-files/

V=		0.2
DISTNAME=	23011-qt-sqlite3-$V
PKGNAME=	qt3-sqlite3-$V
REVISION=	8

WRKDIST=	${WRKDIR}/qt-sqlite3-${V}

MODULES=	x11/qt3 devel/qmake

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m pthread sqlite3 ${COMPILER_LIBCXX}

LIB_DEPENDS=		databases/sqlite3
NO_TEST=		Yes

SUBST_VARS=		MODQT_PLUGINS

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODQT_PLUGINS}/sqldrivers
	${INSTALL_DATA} ${WRKBUILD}/sqldrivers/libqsqlite3.so \
		${PREFIX}/${MODQT_PLUGINS}/sqldrivers

.include <bsd.port.mk>
