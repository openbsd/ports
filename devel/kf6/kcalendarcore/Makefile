COMMENT =	KDE calendar access library
DISTNAME =	kcalendarcore-${VERSION}

CATEGORIES =	devel mail

SHARED_LIBS +=  KF6CalendarCore           0.1 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6Qml
WANTLIB += ical icalss icalvcal m pyside6.abi3 ${MODPY_WANTLIB} shiboken6.abi3

MODULES =	lang/python

BUILD_DEPENDS =	devel/bison

RUN_DEPENDS =	devel/bison

LIB_DEPENDS =	textproc/libical \
		x11/qt6/qtdeclarative \
		x11/qt6/pyside6/pyside \
		x11/qt6/pyside6/shiboken \

TEST_IS_INTERACTIVE =	X11
TEST_ENV =		LC_ALL=en_US.UTF-8

.include <bsd.port.mk>
