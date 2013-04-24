# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 19:04:46 zhuk Exp $

CATEGORIES =	devel x11/kde4
COMMENT =	programming language wrapper generator
DISTNAME =	smokegen-${MODKDE4_VERSION}

# https://bugs.kde.org/show_bug.cgi?id=283677

SHARED_LIBS =	smokebase		0.0 # 3.0
SHARED_LIBS +=	cppparser		0.0

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtXml

MODKDE4_USE =

NO_TEST =	Yes

.include <bsd.port.mk>
