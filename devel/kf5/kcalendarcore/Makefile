# $OpenBSD: Makefile,v 1.5 2021/10/13 15:02:03 rsadowski Exp $

COMMENT =	The KDE calendar access library
DISTNAME =	kcalendarcore-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=  KF5CalendarCore           2.4 # 5.7

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui ical icalss icalvcal
WANTLIB += m

BUILD_DEPENDS =	devel/bison

RUN_DEPENDS =	devel/bison

LIB_DEPENDS =	textproc/libical

.include <bsd.port.mk>
