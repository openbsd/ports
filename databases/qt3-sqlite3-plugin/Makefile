# $OpenBSD: Makefile,v 1.8 2010/11/15 00:22:53 espie Exp $

SHARED_ONLY=	Yes
COMMENT=	qt3 sqlite3 plugin
CATEGORIES=	databases devel x11

HOMEPAGE=	http://kde-apps.org/content/show.php?content=23011
MASTER_SITES=	http://kde-apps.org/CONTENT/content-files/

P=		qt-sqlite3-0.2

DISTNAME=	23011-$P
PKGNAME=	qt3-sqlite3-0.2p2

WRKDIST=	${WRKDIR}/$P

MODULES=	x11/qt3

LIB_DEPENDS +=	databases/sqlite3
WANTLIB +=	sqlite3

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=		Yes

SUBST_VARS=		MODQT_PLUGINS

do-configure:
	cd ${WRKDIST} && qmake

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODQT_PLUGINS}/sqldrivers
	${INSTALL_DATA} ${WRKBUILD}/sqldrivers/libqsqlite3.so \
		${PREFIX}/${MODQT_PLUGINS}/sqldrivers


.include <bsd.port.mk>
