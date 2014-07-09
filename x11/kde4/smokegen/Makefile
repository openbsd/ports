# $OpenBSD: Makefile,v 1.7 2014/07/09 20:03:31 zhuk Exp $

CATEGORIES =	devel x11/kde4
COMMENT =	programming language wrapper generator
DISTNAME =	smokegen-${MODKDE4_VERSION}

# https://bugs.kde.org/show_bug.cgi?id=283677

SHARED_LIBS =	smokebase		50.1 # 3.0
SHARED_LIBS +=	cppparser		50.1

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtXml

MODKDE4_USE =

NO_TEST =	Yes

CONFIGURE_ARGS =	-DSMOKE_LIBRARY_PREFIX:Path=${PREFIX}/${MODKDE4_LIB_DIR}

.include <bsd.port.mk>
