# $OpenBSD: Makefile,v 1.23 2019/07/12 20:44:01 sthen Exp $

COMMENT=	qt3 sqlite3 plugin
CATEGORIES=	databases devel x11

HOMEPAGE=	http://kde-apps.org/content/show.php?content=23011
MASTER_SITES=	http://kde-apps.org/CONTENT/content-files/

V=		0.2
DISTNAME=	23011-qt-sqlite3-$V
PKGNAME=	qt3-sqlite3-$V
REVISION=	9

WRKDIST=	${WRKDIR}/qt-sqlite3-${V}

MODULES=	x11/qt3 devel/qmake

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += m pthread sqlite3 ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=		databases/sqlite3
NO_TEST=		Yes

SUBST_VARS=		MODQT_PLUGINS

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODQT_PLUGINS}/sqldrivers
	${INSTALL_DATA} ${WRKBUILD}/sqldrivers/libqsqlite3.so \
		${PREFIX}/${MODQT_PLUGINS}/sqldrivers

.include <bsd.port.mk>
