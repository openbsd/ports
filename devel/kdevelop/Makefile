# $OpenBSD: Makefile,v 1.2 2014/07/23 10:50:43 zhuk Exp $

CATEGORIES =	devel x11
COMMENT =	integrated development environment for KDE 4
KDEV_V =	4.6.0
KDEVPLAT_V =	1.6.0
DISTNAME =	kdevelop-${KDEV_V}
HOMEPAGE =	http://www.kdevelop.org/
REVISION =	0

SHARED_LIBS =	kdev4cmakecommon	0.0
SHARED_LIBS +=	kdev4cppduchain		0.0
SHARED_LIBS +=	kdev4cppparser		0.0
SHARED_LIBS +=	kdev4cpprpp		0.0

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kdevelop/${KDEV_V}/src/}
DIST_SUBDIR =	kde

# GPLv2+, LGPLv2.1+, GNU FDLv1.2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtHelp lib/qt4/QtNetwork lib/qt4/QtScript
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeclarative ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kemoticons ${KDE4LIB}/kidletime ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/knewstuff3 ${KDE4LIB}/knotifyconfig ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/kprintutils ${KDE4LIB}/ktexteditor ${KDE4LIB}/kutils
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils ${KDE4LIB}/plasma
WANTLIB += ${KDE4LIB}/kasten2controllers ${KDE4LIB}/kasten2core
WANTLIB += ${KDE4LIB}/kasten2gui ${KDE4LIB}/kasten2okteta1controllers
WANTLIB += ${KDE4LIB}/kasten2okteta1core ${KDE4LIB}/kasten2okteta1gui
WANTLIB += ${KDE4LIB}/okteta1core ${KDE4LIB}/okteta1gui
WANTLIB += ${KDE4LIB}/threadweaver
WANTLIB += kdevplatformdebugger kdevplatformdocumentation
WANTLIB += kdevplatforminterfaces kdevplatformlanguage
WANTLIB += kdevplatformoutputview kdevplatformproject kdevplatformshell
WANTLIB += kdevplatformutil kdevplatformvcs
WANTLIB += processcore processui qjson soprano sublime

MODULES =	x11/kde4 devel/gettext lang/python
MODKDE4_USE =	workspace

BUILD_DEPENDS =	misc/shared-mime-info

RUN_DEPENDS =	${MODKDE4_DEP_DIR}/kate \
		devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+2,-guic \
		x11/kde4/kapptemplate>=${MODKDE4_DEP_VERSION}

LIB_DEPENDS = 	devel/kdevplatform>=${KDEVPLAT_V} \
		x11/kde4/okteta>=${MODKDE4_DEP_VERSION}

# XXX Should those go under ${PREFIX}/lib/?
post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/share/apps/kdevgdb/printers

.include <bsd.port.mk>
