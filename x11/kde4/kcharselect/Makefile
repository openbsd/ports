# $OpenBSD: Makefile,v 1.6 2015/05/28 10:17:27 pascal Exp $

COMMENT =	KDE character select and clipboard copy
DISTNAME =	kcharselect-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
