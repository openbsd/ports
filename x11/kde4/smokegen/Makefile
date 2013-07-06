# $OpenBSD: Makefile,v 1.5 2013/07/06 09:46:29 zhuk Exp $

CATEGORIES =	devel x11/kde4
COMMENT =	programming language wrapper generator
DISTNAME =	smokegen-${MODKDE4_VERSION}
REVISION =	1

# https://bugs.kde.org/show_bug.cgi?id=283677

SHARED_LIBS =	smokebase		50.0 # 3.0
SHARED_LIBS +=	cppparser		50.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtXml

MODKDE4_USE =

NO_TEST =	Yes

.include <bsd.port.mk>
