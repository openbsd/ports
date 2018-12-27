# $OpenBSD: Makefile,v 1.18 2018/12/27 20:30:55 rsadowski Exp $

COMMENT =	KDE base applications
DISTNAME =	kde-baseapps-${MODKDE4_VERSION}
REVISION =	7

SHARED_LIBS =	konq			51.0	# 6.0
SHARED_LIBS +=	konqsidebarplugin	51.0	# 4.0
SHARED_LIBS +=	konquerorprivate	51.0	# 4.0
SHARED_LIBS +=	kbookmarkmodel_private	51.0	# 4.7

WANTLIB += ${COMPILER_LIBCXX} ICE lib/qt4/Qt3Support lib/qt4/QtDBus
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml SM X11 Xext Xt c glib-2.0
WANTLIB += ${KDE4LIB}/kactivities ${KDE4LIB}/kcmutils ${KDE4LIB}/kde3support
WANTLIB += ${KDE4LIB}/kdesu ${KDE4LIB}/kdeui ${KDE4LIB}/kfile
WANTLIB += ${KDE4LIB}/khtml ${KDE4LIB}/kio ${KDE4LIB}/kjs ${KDE4LIB}/kparts
WANTLIB += m ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils ${KDE4LIB}/plasma
WANTLIB += ${KDE4LIB}/solid soprano tidyp-1.04 z

MODULES =	multimedia/phonon

# KJS is broken, so allow KDE browsers to work out of the box
# using QtWebKit.
RUN_DEPENDS =	devel/desktop-file-utils \
		www/kwebkitpart,${MODKDE4_FLAVOR} \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/glib2 \
		www/tidyp \
		${MODKDE4_DEP_DIR}/kactivities>=${MIN_ACTIVITIES_VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
