# $OpenBSD: Makefile,v 1.1.1.1 2018/03/05 10:12:30 rsadowski Exp $

COMMENT =	database connectivity and creation framework

VERSION =	3.0.2
DISTNAME =	kdb-${VERSION}

SHARED_LIBS +=  KDb3                      0.0 # 3.0

CATEGORIES =	databases

HOMEPAGE =	http://www.kexi-project.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5Widgets Qt5Xml c icui18n icuuc m mysqlclient pq
WANTLIB += sqlite3

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kdb/src/}}
EXTRACT_SUFX =	.tar.xz

MODULES =		devel/cmake \
			devel/kf5

BUILD_DEPENDS =		shells/bash \
			devel/gettext-tools \
			databases/postgresql,-server

LIB_DEPENDS =		devel/kf5/kcoreaddons \
			databases/mariadb \
			databases/postgresql \
			databases/sqlite3 \
			textproc/icu4c

CONFIGURE_ARGS =	-DBUILD_TESTING:Bool=Yes \
			-DBUILD_EXAMPLES:Bool=Yes


CONFIGURE_ENV =		LDFLAGS="-lc"

.include <bsd.port.mk>
