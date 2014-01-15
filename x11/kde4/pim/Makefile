# $OpenBSD: Makefile,v 1.15 2014/01/15 19:42:12 zhuk Exp $

COMMENT =	KDE personal information management
DISTNAME =	kdepim-${MODKDE4_VERSION}
REVISION =	0

SHARED_LIBS =	akonadi_next			51.0
SHARED_LIBS +=	akregatorinterfaces		51.0
SHARED_LIBS +=	kaddressbookprivate		51.0
SHARED_LIBS +=	kcal_resourceblog		51.0
SHARED_LIBS +=	kleo				51.0
SHARED_LIBS +=	kontactprivate			51.0
SHARED_LIBS +=	korganizer_core			51.0
SHARED_LIBS +=	korganizerprivate		51.0
SHARED_LIBS +=	messagecore			51.0
SHARED_LIBS +=	messagelist			51.0
SHARED_LIBS +=	messageviewer			51.0
SHARED_LIBS +=	akregatorprivate		51.0
SHARED_LIBS +=	kcal_resourceremote		51.0
SHARED_LIBS +=	kdepim				51.0
SHARED_LIBS +=	kmailprivate			51.0
SHARED_LIBS +=	knodecommon			51.0
SHARED_LIBS +=	korganizer_interfaces		51.0
SHARED_LIBS +=	kpgp				51.0
SHARED_LIBS +=	ksieve				51.0

SHARED_LIBS +=  calendarsupport           51.0 # 4.7
SHARED_LIBS +=  eventviews                51.0 # 4.7
SHARED_LIBS +=  incidenceeditorsng        51.0 # 4.7
SHARED_LIBS +=  incidenceeditorsngmobile  51.0 # 4.7
SHARED_LIBS +=  kdepimdbusinterfaces      51.0 # 4.7
#SHARED_LIBS +=  kdepimmobileui            51.0 # 4.7
SHARED_LIBS +=  kdgantt2                  51.0 # 0.1
SHARED_LIBS +=  kleopatraclientcore       51.0 # 0.3
SHARED_LIBS +=  kleopatraclientgui        51.0 # 0.3
SHARED_LIBS +=  kmanagesieve              51.0 # 4.7
SHARED_LIBS +=  ksieveui                  51.0 # 4.7
SHARED_LIBS +=  mailcommon                51.0 # 4.7
SHARED_LIBS +=  mailimporter              51.0 # 4.9
SHARED_LIBS +=  messagecomposer           51.0 # 4.7
SHARED_LIBS +=  templateparser            51.0 # 4.7

SHARED_LIBS +=	pimcommon                 51.0 # 4.10

SHARED_LIBS +=  composereditorng          0.0 # 4.11
SHARED_LIBS +=  grammar                   0.0 # 4.11
SHARED_LIBS +=  pimactivity               0.0 # 4.11
SHARED_LIBS +=  sendlater                 0.0 # 4.11

MODULES =	devel/gettext

MODKDE4_USE =	pim

WANTLIB =  c m pthread stdc++ z
WANTLIB += X11 Xss
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/akonadi-calendar ${KDE4LIB}/akonadi-contact
WANTLIB += ${KDE4LIB}/akonadi-kde ${KDE4LIB}/akonadi-kmime ${KDE4LIB}/kabc
WANTLIB += ${KDE4LIB}/kactivities
WANTLIB += ${KDE4LIB}/kalarmcal ${KDE4LIB}/kblog ${KDE4LIB}/kcal
WANTLIB += ${KDE4LIB}/kcalcore ${KDE4LIB}/kcalutils ${KDE4LIB}/kcmutils
WANTLIB += ${KDE4LIB}/kde3support ${KDE4LIB}/kdeui ${KDE4LIB}/kdewebkit
WANTLIB += ${KDE4LIB}/kdnssd ${KDE4LIB}/kholidays
WANTLIB += ${KDE4LIB}/khtml ${KDE4LIB}/kimap ${KDE4LIB}/kio ${KDE4LIB}/kjs
WANTLIB += ${KDE4LIB}/kldap ${KDE4LIB}/kmbox ${KDE4LIB}/kmime
WANTLIB += ${KDE4LIB}/knewstuff3 ${KDE4LIB}/knotifyconfig
WANTLIB += ${KDE4LIB}/kontactinterface ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/kpimidentities ${KDE4LIB}/kpimtextedit
WANTLIB += ${KDE4LIB}/kpimutils ${KDE4LIB}/kprintutils
WANTLIB += ${KDE4LIB}/kresources ${KDE4LIB}/ktexteditor ${KDE4LIB}/ktnef
WANTLIB += ${KDE4LIB}/mailtransport ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukcore ${KDE4LIB}/nepomukutils
WANTLIB += ${KDE4LIB}/nepomukwidgets ${KDE4LIB}/plasma ${KDE4LIB}/solid
WANTLIB += ${KDE4LIB}/syndication
WANTLIB += akonadiprotocolinternals prison soprano
WANTLIB += assuan gpg-error gpgme++ gpgme++-pthread gpgme-pthread
WANTLIB += grantlee_core grantlee_gui link-grammar qgpgme sasl2

MODULES =	devel/gettext multimedia/phonon

# textproc/dblatex could be detected but will not be used
BUILD_DEPENDS =	devel/boost \
		misc/shared-desktop-ontologies \
		textproc/libxslt

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-desktop-ontologies \
		misc/shared-mime-info \
		x11/gtk+2,-guic

LIB_DEPENDS =	databases/soprano \
		productivity/akonadi>=${MIN_AKONADI_VERSION} \
		security/cyrus-sasl2 \
		security/gpgme \
		security/libassuan \
		textproc/link-grammar \
		x11/grantlee \
		${MODKDE4_DEP_DIR}/kactivities>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/nepomuk-core>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/nepomuk-widgets>=${MODKDE4_DEP_VERSION}

MODKDE4_SYSCONF_FILES =	dbus-1	share/examples

.include <bsd.port.mk>
