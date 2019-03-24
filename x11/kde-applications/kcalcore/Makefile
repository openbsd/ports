# $OpenBSD: Makefile,v 1.5 2019/03/24 11:56:59 rsadowski Exp $

COMMENT =	The KDE calendar access library
DISTNAME =	kcalcore-${VERSION}
CATEGORIES =	devel mail
REVISION =	0


SHARED_LIBS +=  KF5CalendarCore           0.0 # 5.7

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui ical icalss icalvcal
WANTLIB += m

MODULES +=	x11/kde-applications

BUILD_DEPENDS +=	devel/bison

RUN_DEPENDS +=	devel/bison

LIB_DEPENDS +=	textproc/libical

.include <bsd.port.mk>
