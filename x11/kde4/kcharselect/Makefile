# $OpenBSD: Makefile,v 1.4 2013/12/08 19:13:30 zhuk Exp $

COMMENT =	KDE character select and clipboard copy
DISTNAME =	kcharselect-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
