# $OpenBSD: Makefile,v 1.9 2014/07/09 20:03:31 zhuk Exp $

CATEGORIES =	devel
COMMENT =	introspective wrappers around KDE
DISTNAME =	smokekde-${MODKDE4_VERSION}

SHARED_LIBS =	smokeakonadi		51.0 # 3.0
#SHARED_LIBS +=	smokeattica		50.0 # 3.0
SHARED_LIBS +=	smokekate		51.0 # 3.0
SHARED_LIBS +=	smokekdecore		51.0 # 3.0
SHARED_LIBS +=	smokekdeui		51.0 # 3.0
SHARED_LIBS +=	smokekfile		51.0 # 3.0
SHARED_LIBS +=	smokekhtml		51.0 # 3.0
SHARED_LIBS +=	smokekio		51.0 # 3.0
SHARED_LIBS +=	smokeknewstuff2		51.0 # 3.0
SHARED_LIBS +=	smokeknewstuff3		51.0 # 3.0
SHARED_LIBS +=	smokekparts		51.0 # 3.0
SHARED_LIBS +=	smokektexteditor	51.0 # 3.0
SHARED_LIBS +=	smokekutils		51.0 # 3.0
SHARED_LIBS +=	smokenepomuk		51.0 # 3.0
SHARED_LIBS +=	smokenepomukquery	51.0 # 3.0
SHARED_LIBS +=	smokeokular		51.0 # 3.0
SHARED_LIBS +=	smokeplasma		51.0 # 3.0
SHARED_LIBS +=	smokesolid		51.0 # 3.0
SHARED_LIBS +=	smokesoprano		51.0 # 3.0
SHARED_LIBS +=	smokesopranoclient	51.0 # 3.0
SHARED_LIBS +=	smokesopranoserver	51.0 # 3.0

WANTLIB =  m pthread
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtOpenGL lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kateinterfaces ${KDE4LIB}/kcmutils
WANTLIB += ${KDE4LIB}/kde3support ${KDE4LIB}/kdeui ${KDE4LIB}/kemoticons
WANTLIB += ${KDE4LIB}/kfile ${KDE4LIB}/khtml ${KDE4LIB}/kidletime
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kjs ${KDE4LIB}/knewstuff2
WANTLIB += ${KDE4LIB}/knewstuff3 ${KDE4LIB}/kparts ${KDE4LIB}/kprintutils
WANTLIB += ${KDE4LIB}/ktexteditor ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukquery ${KDE4LIB}/nepomukutils
WANTLIB += ${KDE4LIB}/okularcore ${KDE4LIB}/phonon_s ${KDE4LIB}/plasma
WANTLIB += ${KDE4LIB}/smokebase ${KDE4LIB}/smokeqtcore ${KDE4LIB}/smokeqtdbus
WANTLIB += ${KDE4LIB}/smokeqtgui ${KDE4LIB}/smokeqtnetwork
WANTLIB += ${KDE4LIB}/smokeqtsvg ${KDE4LIB}/smokeqtxml ${KDE4LIB}/solid
WANTLIB += ${KDE4LIB}/akonadi-contact ${KDE4LIB}/akonadi-kabc
WANTLIB += ${KDE4LIB}/akonadi-kde ${KDE4LIB}/akonadi-kmime ${KDE4LIB}/kabc
WANTLIB += ${KDE4LIB}/kcalcore ${KDE4LIB}/kmime ${KDE4LIB}/kpimutils
WANTLIB += ${KDE4LIB}/kresources
WANTLIB += soprano sopranoclient sopranoserver

MODKDE4_USE =	pim libs

LIB_DEPENDS =	databases/soprano \
		${MODKDE4_DEP_DIR}/kate>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/okular>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/smokegen>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/smokeqt>=${MODKDE4_DEP_VERSION}

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_LibAttica=Yes

.include <bsd.port.mk>
