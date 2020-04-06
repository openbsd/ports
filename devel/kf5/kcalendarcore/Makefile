# $OpenBSD: Makefile,v 1.1.1.1 2020/04/06 04:48:43 rsadowski Exp $

COMMENT =	The KDE calendar access library
DISTNAME =	kcalendarcore-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=  KF5CalendarCore           2.0 # 5.7

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui ical icalss icalvcal
WANTLIB += m

BUILD_DEPENDS =	devel/bison

RUN_DEPENDS =	devel/bison

LIB_DEPENDS =	textproc/libical

.include <bsd.port.mk>
