# $OpenBSD: Makefile,v 1.5 2017/04/12 18:12:33 landry Exp $

COMMENT =	KDE app localization tools
DISTNAME =	lokalize-${MODKDE4_VERSION}
REVISION =	2

CATEGORIES =	devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/lokalize

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kfile ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/krosscore ${KDE4LIB}/krossui
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += ${KDE4LIB}/threadweaver
WANTLIB += hunspell-1.6 soprano

MODULES =		lang/python
MODPY_ADJ_FILES =	scripts/xliffmerge.py

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	textproc/hunspell

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/share/apps/lokalize/scripts

.include <bsd.port.mk>
