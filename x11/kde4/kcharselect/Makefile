# $OpenBSD: Makefile,v 1.8 2018/06/27 21:04:15 espie Exp $

COMMENT =	KDE character select and clipboard copy
DISTNAME =	kcharselect-${MODKDE4_VERSION}
REVISION =	2

WANTLIB =  c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
