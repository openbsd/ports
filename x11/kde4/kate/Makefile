# $OpenBSD: Makefile,v 1.9 2014/07/09 20:03:24 zhuk Exp $

COMMENT =	KDE advanced text editor
DISTNAME =	kate-${MODKDE4_VERSION}

SHARED_LIBS =	kateinterfaces			50.0 # 4.7
SHARED_LIBS +=	katepartinterfaces		50.0 # 4.7
#SHARED_LIBS +=	ktexteditor_codesnippets_core	0.0 # 0.0

WANTLIB =  c m pthread ${MODPY_WANTLIB}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kactivities ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kemoticons ${KDE4LIB}/kfile ${KDE4LIB}/kidletime
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/knewstuff3 ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/kprintutils ${KDE4LIB}/ktexteditor ${KDE4LIB}/kutils
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils ${KDE4LIB}/plasma
WANTLIB += qjson soprano

MODULES =	lang/python

BUILD_DEPENDS =	devel/py-sip,${MODPY_FLAVOR} \
		${MODKDE4_DEP_DIR}/py-kde>=${MODKDE4_DEP_VERSION}

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic \
		${MODKDE4_DEP_DIR}/py-kde>=${MODKDE4_DEP_VERSION}

LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		devel/qjson \
		${MODKDE4_DEP_DIR}/kactivities>=${MODKDE4_DEP_VERSION}

# TODO: build and install both Python2 and Python3 pate plugins

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${WRKINST}${MODPY_SITEPKG} \
		${PREFIX}/share/apps/kate

.include <bsd.port.mk>
