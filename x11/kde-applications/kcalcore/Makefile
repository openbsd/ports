# $OpenBSD: Makefile,v 1.6 2020/03/23 18:01:18 rsadowski Exp $

COMMENT =	The KDE calendar access library
DISTNAME =	kcalcore-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=  KF5CalendarCore           1.0 # 5.7

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui ical icalss icalvcal
WANTLIB += m

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	devel/bison

RUN_DEPENDS =	devel/bison

LIB_DEPENDS =	textproc/libical

.include <bsd.port.mk>
