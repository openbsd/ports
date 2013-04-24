# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 11:41:52 zhuk Exp $

COMMENT =	Mah Jongg four players board game for KDE
DISTNAME =	kajongg-${MODKDE4_VERSION}
HOMEPAGE =	http://www.kde.org/applications/games/kajongg/

MODULES =	lang/python

BUILD_DEPENDS =	${MODKDE4_DEP_DIR}/py-kde

RUN_DEPENDS =	devel/py-twisted/core \
		${MODKDE4_DEP_DIR}/libkmahjongg>=${MODKDE4_VERSION} \
		${MODKDE4_DEP_DIR}/py-kde

# Avoid extra BUILD_DEPENDS
CONFIGURE_ARGS =	-DINSTALL_KAJONGG:Bool=TRUE

MODPY_ADJ_FILES =	src/deferredutil.py \
			src/kajongg.py \
			src/kajonggtest.py \
			src/kajonggserver.py \
			src/scoringtest.py \
			src/server.py \
			setup.py

.include <bsd.port.mk>
