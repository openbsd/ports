# $OpenBSD: Makefile,v 1.6 2013/12/08 19:13:34 zhuk Exp $

CATEGORIES =	devel x11/kde4
COMMENT =	programming language wrapper generator
DISTNAME =	smokegen-${MODKDE4_VERSION}

# https://bugs.kde.org/show_bug.cgi?id=283677

SHARED_LIBS =	smokebase		50.0 # 3.0
SHARED_LIBS +=	cppparser		50.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtXml

MODKDE4_USE =

NO_TEST =	Yes

CONFIGURE_ARGS =	-DSMOKE_LIBRARY_PREFIX:Path=${PREFIX}/${MODKDE4_LIB_DIR}

.include <bsd.port.mk>
