# $OpenBSD: Makefile,v 1.3 2019/03/08 20:00:40 cwen Exp $

COMMENT =	database connectivity and creation framework

VERSION =	3.1.0
DISTNAME =	kdb-${VERSION}
REVISION =	0

SHARED_LIBS +=  KDb3                      1.0 # 3.0

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

.include <bsd.port.mk>
