# $OpenBSD: Makefile,v 1.8 2020/03/23 18:01:02 rsadowski Exp $

COMMENT =	database connectivity and creation framework

VERSION =	3.2.0
DISTNAME =	kdb-${VERSION}
REVISION =	1

SHARED_LIBS +=  KDb3                      1.1 # 3.0

CATEGORIES =	databases

HOMEPAGE =	http://www.kexi-project.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5Widgets Qt5Xml c icui18n icuuc m mariadb pq sqlite3

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kdb/src/}}
EXTRACT_SUFX =	.tar.xz

MODULES =		devel/cmake \
			lang/python \
			devel/kf5

MODPY_RUNDEP =		No

BUILD_DEPENDS =		shells/bash \
			devel/gettext,-tools \
			databases/postgresql,-server

LIB_DEPENDS =		devel/kf5/kcoreaddons \
			databases/mariadb \
			databases/postgresql \
			databases/sqlite3 \
			textproc/icu4c

CONFIGURE_ARGS +=	-DBUILD_TESTING=On \
			-DBUILD_EXAMPLES=On

.include <bsd.port.mk>
