COMMENT =	database connectivity and creation framework

VERSION =	3.2.0
DISTNAME =	kdb-${VERSION}
REVISION =	6

SHARED_LIBS +=  KDb3                      1.1 # 3.0

CATEGORIES =	databases

HOMEPAGE =	http://www.kexi-project.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5CoreAddons Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5Widgets Qt5Xml c icui18n icuuc m mariadb pq sqlite3

SITES =		${SITE_KDE:=stable/kdb/src/}
EXTRACT_SUFX =	.tar.xz

# needs c++ and python
COMPILER =		base-clang ports-gcc
COMPILER_LANGS = 	c c++

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


CONFIGURE_ARGS +=	-DCMAKE_POLICY_VERSION_MINIMUM=3.5

.include <bsd.port.mk>
