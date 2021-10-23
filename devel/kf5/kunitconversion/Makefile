# $OpenBSD: Makefile,v 1.14 2021/09/10 08:42:06 rsadowski Exp $

COMMENT =	KDE framework for converting physical units
DISTNAME =	kunitconversion-${VERSION}

SHARED_LIBS =	KF5UnitConversion	5.2

WANTLIB += ${COMPILER_LIBCXX} KF5I18n Qt5Core Qt5Network m

BUILD_DEPENDS =	devel/gettext,-tools

LIB_DEPENDS =		devel/kf5/ki18n>=${MODKF5_VERSION}

# for tests
PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
