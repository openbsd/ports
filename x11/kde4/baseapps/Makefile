# $OpenBSD: Makefile,v 1.8 2014/07/10 19:55:26 zhuk Exp $

COMMENT =	KDE base applications
DISTNAME =	kde-baseapps-${MODKDE4_VERSION}
REVISION =	0

SHARED_LIBS =	konq			51.0	# 6.0
SHARED_LIBS +=	konqsidebarplugin	51.0	# 4.0
SHARED_LIBS +=	dolphinprivate		51.0	# 1.0
SHARED_LIBS +=	konquerorprivate	51.0	# 4.0
SHARED_LIBS +=	kbookmarkmodel_private	51.0	# 4.7

WANTLIB =  c m pthread z
WANTLIB += ICE SM X11 Xext Xt Xrender
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/baloocore ${KDE4LIB}/baloofiles ${KDE4LIB}/baloopim
WANTLIB += ${KDE4LIB}/baloowidgets ${KDE4LIB}/kfilemetadata
WANTLIB += ${KDE4LIB}/kactivities ${KDE4LIB}/kcmutils ${KDE4LIB}/kde3support
WANTLIB += ${KDE4LIB}/kdesu ${KDE4LIB}/kdeui ${KDE4LIB}/kfile ${KDE4LIB}/khtml
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kjs ${KDE4LIB}/knewstuff3
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += ${KDE4LIB}/plasma ${KDE4LIB}/solid
WANTLIB += glib-2.0 soprano tidyp

MODULES =	multimedia/phonon

# KJS is broken, so allow KDE browsers to work out of the box
# using QtWebKit.
RUN_DEPENDS =	devel/desktop-file-utils \
		www/kwebkitpart,${MODKDE4_FLAVOR} \
		x11/gtk+2,-guic

LIB_DEPENDS =	devel/glib2 \
		www/tidyp \
		${MODKDE4_DEP_DIR}/baloo>=${MODKDE4_VERSION} \
		${MODKDE4_DEP_DIR}/baloo-widgets>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/kactivities>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
