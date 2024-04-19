UNLINKED = kf6
COMMENT =	KDE calendar access library
DISTNAME =	kcalendarcore-${VERSION}

CATEGORIES =	devel mail

SHARED_LIBS +=  KF6CalendarCore           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui ical icalss icalvcal
WANTLIB += m

BUILD_DEPENDS =	devel/bison

RUN_DEPENDS =	devel/bison

LIB_DEPENDS =	textproc/libical

.include <bsd.port.mk>
