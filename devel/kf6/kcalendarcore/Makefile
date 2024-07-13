COMMENT =	KDE calendar access library
DISTNAME =	kcalendarcore-${VERSION}

CATEGORIES =	devel mail

SHARED_LIBS +=  KF6CalendarCore           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network ical
WANTLIB += icalss icalvcal m

BUILD_DEPENDS =	devel/bison

RUN_DEPENDS =	devel/bison

LIB_DEPENDS =	textproc/libical \
		x11/qt6/qtdeclarative

.include <bsd.port.mk>
