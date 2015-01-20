# $OpenBSD: Makefile,v 1.6 2015/01/20 21:58:39 zhuk Exp $

COMMENT =	Mah Jongg four players board game for KDE
DISTNAME =	kajongg-${MODKDE4_VERSION}
HOMEPAGE =	http://www.kde.org/applications/games/kajongg/
PKG_ARCH =	*

MODULES =	lang/python

BUILD_DEPENDS =	${MODKDE4_DEP_DIR}/py-kde

RUN_DEPENDS =	audio/vorbis-tools \
		devel/desktop-file-utils \
		devel/py-twisted/core \
		x11/gtk+2,-guic \
		${MODKDE4_DEP_DIR}/libkmahjongg>=${MODKDE4_VERSION} \
		${MODKDE4_DEP_DIR}/py-kde>=${MODKDE4_VERSION}

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
