# $OpenBSD: Makefile,v 1.7 2018/06/04 20:25:33 rsadowski Exp $

COMMENT =	KDE framework for converting physical units
DISTNAME =	kunitconversion-${VERSION}

SHARED_LIBS =	KF5UnitConversion	3.1

WANTLIB += ${COMPILER_LIBCXX} KF5I18n Qt5Core Qt5Network m

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	devel/kf5/ki18n

# for tests
PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
