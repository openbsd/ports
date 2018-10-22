# $OpenBSD: Makefile,v 1.8 2018/10/22 20:30:43 rsadowski Exp $

COMMENT =	KDE framework for converting physical units
DISTNAME =	kunitconversion-${VERSION}

SHARED_LIBS =	KF5UnitConversion	3.2

WANTLIB += ${COMPILER_LIBCXX} KF5I18n Qt5Core Qt5Network m

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	devel/kf5/ki18n

# for tests
PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
