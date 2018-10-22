# $OpenBSD: Makefile,v 1.2 2018/10/22 20:30:44 rsadowski Exp $

COMMENT =	The KDE calendar access library
DISTNAME =	kcalcore-${VERSION}
CATEGORIES =	devel mail

KDE5 =		Yes

SHARED_LIBS +=  KF5CalendarCore           0.0 # 5.7

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui ical icalss icalvcal
WANTLIB += m

BUILD_DEPENDS +=	devel/bison

RUN_DEPENDS +=	devel/bison

LIB_DEPENDS +=	textproc/libical

.include <bsd.port.mk>
