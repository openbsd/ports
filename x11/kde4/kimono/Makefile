# $OpenBSD: Makefile,v 1.7 2014/07/09 20:03:25 zhuk Exp $

CATEGORIES =	devel
COMMENT =	KDE bindings for .NET
DISTNAME =	kimono-${MODKDE4_VERSION}

SHARED_LIBS =	kimono			51.0 # 2.0
SHARED_LIBS +=	akonadi-sharp		51.0
SHARED_LIBS +=	khtml-sharp		51.0
SHARED_LIBS +=	ktexteditor-sharp	51.0
SHARED_LIBS +=	nepomuk-sharp		51.0
SHARED_LIBS +=	plasma-sharp		51.0
SHARED_LIBS +=	soprano-sharp		51.0

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/akonadi-kde ${KDE4LIB}/akonadi-kmime
WANTLIB += ${KDE4LIB}/kdecore ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/ktexteditor ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukquery ${KDE4LIB}/nepomukutils
WANTLIB += ${KDE4LIB}/plasma ${KDE4LIB}/qyoto
WANTLIB += ${KDE4LIB}/smokeakonadi
WANTLIB += ${KDE4LIB}/smokebase ${KDE4LIB}/smokeqtcore
WANTLIB += ${KDE4LIB}/smokekdecore ${KDE4LIB}/smokekdeui
WANTLIB += ${KDE4LIB}/smokekfile ${KDE4LIB}/smokekhtml ${KDE4LIB}/smokekio
WANTLIB += ${KDE4LIB}/smokeknewstuff2 ${KDE4LIB}/smokeknewstuff3
WANTLIB += ${KDE4LIB}/smokekparts ${KDE4LIB}/smokektexteditor
WANTLIB += ${KDE4LIB}/smokekutils ${KDE4LIB}/smokenepomuk
WANTLIB += ${KDE4LIB}/smokeplasma ${KDE4LIB}/smokeqtdbus
WANTLIB += ${KDE4LIB}/smokeqtgui ${KDE4LIB}/smokeqtnetwork
WANTLIB += ${KDE4LIB}/smokeqtopengl ${KDE4LIB}/smokeqtsql
WANTLIB += ${KDE4LIB}/smokeqtsvg ${KDE4LIB}/smokeqtxml
WANTLIB += ${KDE4LIB}/smokesoprano
WANTLIB += gc mono-2.0 soprano sopranoclient sopranoserver sopranoindex

MODULES =		lang/mono
MODKDE4_USE =		libs

BUILD_DEPENDS =		misc/shared-desktop-ontologies \
			productivity/akonadi>=${MIN_AKONADI_VERSION} \
			${MODKDE4_DEP_DIR}/nepomuk-core>=${MODKDE4_DEP_VERSION}

RUN_DEPENDS =		productivity/akonadi>=${MIN_AKONADI_VERSION} \
			${MODKDE4_DEP_DIR}/nepomuk-core>=${MODKDE4_DEP_VERSION}

LIB_DEPENDS =		databases/soprano>=${MIN_SOPRANO_VERSION} \
			devel/boehm-gc \
			${MODKDE4_DEP_DIR}/qyoto>=${MODKDE4_DEP_VERSION} \
			${MODKDE4_DEP_DIR}/smokekde>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
