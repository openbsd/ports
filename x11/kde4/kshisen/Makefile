# $OpenBSD: Makefile,v 1.8 2018/06/27 21:04:18 espie Exp $

COMMENT =	solitare board KDE game based on Mah Jongg ideas
DISTNAME =	kshisen-${MODKDE4_VERSION}
REVISION =	3

MODKDE4_USE =	games

WANTLIB =  c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kmahjongglib

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	${MODKDE4_DEP_DIR}/libkmahjongg>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
