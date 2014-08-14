# $OpenBSD: Makefile,v 1.9 2014/08/14 23:05:57 zhuk Exp $

CATEGORIES =	productivity
COMMENT =	PIM cache and access services
DISTNAME =	akonadi-1.12.1
HOMEPAGE =	http://community.kde.org/KDE_PIM/Akonadi

SHARED_LIBS = 	akonadiprotocolinternals 3.0	# 1.0

EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	${MASTER_SITE_KDE:=stable/akonadi/src/}

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSql lib/qt4/QtXml
WANTLIB += boost_program_options-mt execinfo sqlite3 soprano

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		x11/kde4
MODKDE4_USE =

# We build support for MySQL and PostgreSQL but SQLite
# is our default now.
BUILD_DEPENDS =		databases/mysql,-server \
			x11/qt4,-mysql \
			x11/qt4,-postgresql

RUN_DEPENDS =		misc/shared-mime-info

LIB_DEPENDS =		databases/soprano>=2.9.0 \
			devel/boost \
			devel/libexecinfo

# XXX (buggy) dbconfigtest fails due to SQLITE being default,
# and it doesn't worth to fix
CONFIGURE_ARGS =	-DDATABASE_BACKEND:String=SQLITE \
			-DINSTALL_QSQLITE_IN_QT_PREFIX:Bool=Yes

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
