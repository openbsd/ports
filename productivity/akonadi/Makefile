# $OpenBSD: Makefile,v 1.19 2019/07/12 20:48:57 sthen Exp $

CATEGORIES =	productivity
COMMENT =	PIM cache and access services
DISTNAME =	akonadi-1.13.0
HOMEPAGE =	http://community.kde.org/KDE_PIM/Akonadi
MAINTAINER =	KDE porting team <openbsd-kde@googlegroups.com>
REVISION =	5

SHARED_LIBS = 	akonadiprotocolinternals 4.0	# 1.0

EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	${MASTER_SITE_KDE:=stable/akonadi/src/}

WANTLIB =  c m pthread X11
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSql lib/qt4/QtXml
WANTLIB += boost_program_options-mt execinfo sqlite3
WANTLIB += ${COMPILER_LIBCXX}

# LGPLv2+
PERMIT_PACKAGE =	Yes

MODULES =		x11/kde4
MODKDE4_USE =

# We build support for MySQL and PostgreSQL but SQLite
# is our default now.
BUILD_DEPENDS =		databases/mariadb,-server \
			x11/qt4,-mysql \
			x11/qt4,-postgresql

RUN_DEPENDS =		misc/shared-mime-info

LIB_DEPENDS =		databases/sqlite3 \
			devel/boost \
			devel/libexecinfo

# XXX (buggy) dbconfigtest fails due to SQLITE being default,
# and it doesn't worth to fix
CONFIGURE_ARGS =	-DDATABASE_BACKEND:String=SQLITE \
			-DINSTALL_QSQLITE_IN_QT_PREFIX:Bool=Yes \
			-DQT5_BUILD=No

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
