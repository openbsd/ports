# $OpenBSD: Makefile,v 1.3 2021/06/15 09:37:25 rsadowski Exp $

COMMENT =	The KDE calendar access library
DISTNAME =	kcalendarcore-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=  KF5CalendarCore           2.2 # 5.7

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui ical icalss icalvcal
WANTLIB += m

BUILD_DEPENDS =	devel/bison

RUN_DEPENDS =	devel/bison

LIB_DEPENDS =	textproc/libical

.include <bsd.port.mk>
