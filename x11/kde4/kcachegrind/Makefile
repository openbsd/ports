# $OpenBSD: Makefile,v 1.7 2015/06/05 06:00:23 robert Exp $

COMMENT =	KDE GUI for profilers
DISTNAME =	kcachegrind-${MODKDE4_VERSION}
REVISION =	2

CATEGORIES =	devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/kcachegrind

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

MODULES =		lang/python lang/php
MODPY_BUILDDEP =	No
MODPHP_BUILDDEP =	No
MODPY_ADJ_FILES =	converters/hotshot2calltree

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

SUBST_VARS =	MODPHP_BIN

pre-configure:
	${SUBST_CMD} ${WRKSRC}/converters/pprof2calltree

.include <bsd.port.mk>
