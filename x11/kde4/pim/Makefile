# $OpenBSD: Makefile,v 1.13 2013/11/24 19:56:32 zhuk Exp $

COMMENT =	KDE personal information management
DISTNAME =	kdepim-${MODKDE4_VERSION}
REVISION =	1

SHARED_LIBS =	akonadi_next			50.0
SHARED_LIBS +=	akregatorinterfaces		50.0
SHARED_LIBS +=	kaddressbookprivate		50.0
SHARED_LIBS +=	kcal_resourceblog		50.0
SHARED_LIBS +=	kleo				50.0
SHARED_LIBS +=	kontactprivate			50.0
SHARED_LIBS +=	korganizer_core			50.0
SHARED_LIBS +=	korganizerprivate		50.0
SHARED_LIBS +=	messagecore			50.0
SHARED_LIBS +=	messagelist			50.0
SHARED_LIBS +=	messageviewer			50.0
SHARED_LIBS +=	akregatorprivate		50.0
SHARED_LIBS +=	kcal_resourceremote		50.0
SHARED_LIBS +=	kdepim				50.0
SHARED_LIBS +=	kmailprivate			50.0
SHARED_LIBS +=	knodecommon			50.0
SHARED_LIBS +=	korganizer_interfaces		50.0
SHARED_LIBS +=	kpgp				50.0
SHARED_LIBS +=	ksieve				50.0

SHARED_LIBS +=  calendarsupport           50.0 # 4.7
SHARED_LIBS +=  eventviews                50.0 # 4.7
SHARED_LIBS +=  incidenceeditorsng        50.0 # 4.7
SHARED_LIBS +=  incidenceeditorsngmobile  50.0 # 4.7
SHARED_LIBS +=  kdepimdbusinterfaces      50.0 # 4.7
SHARED_LIBS +=  kdepimmobileui            50.0 # 4.7
SHARED_LIBS +=  kdgantt2                  50.0 # 0.1
SHARED_LIBS +=  kleopatraclientcore       50.0 # 0.3
SHARED_LIBS +=  kleopatraclientgui        50.0 # 0.3
SHARED_LIBS +=  kmanagesieve              50.0 # 4.7
SHARED_LIBS +=  ksieveui                  50.0 # 4.7
SHARED_LIBS +=  mailcommon                50.0 # 4.7
SHARED_LIBS +=  mailimporter              50.0 # 4.9
SHARED_LIBS +=  messagecomposer           50.0 # 4.7
SHARED_LIBS +=  templateparser            50.0 # 4.7

SHARED_LIBS +=	pimcommon                 50.0 # 4.10

MODULES =	devel/gettext

MODKDE4_USE =	pim

WANTLIB =  c m pthread stdc++ z
WANTLIB += ICE SM X11 Xss Xext
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtDeclarative
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtOpenGL
WANTLIB += lib/qt4/QtScript lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/akonadi-calendar ${KDE4LIB}/akonadi-contact
WANTLIB += ${KDE4LIB}/akonadi-kde ${KDE4LIB}/akonadi-kmime ${KDE4LIB}/kabc
WANTLIB += ${KDE4LIB}/kalarmcal ${KDE4LIB}/kblog ${KDE4LIB}/kcal
WANTLIB += ${KDE4LIB}/kcalcore ${KDE4LIB}/kcalutils ${KDE4LIB}/kcmutils
WANTLIB += ${KDE4LIB}/kde3support ${KDE4LIB}/kdeui ${KDE4LIB}/kdewebkit
WANTLIB += ${KDE4LIB}/kdnssd ${KDE4LIB}/kfile ${KDE4LIB}/kholidays
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
WANTLIB += akonadiprotocolinternals prison soprano streamanalyzer streams
WANTLIB += assuan gpg-error gpgme++ gpgme++-pthread gpgme-pthread
WANTLIB += grantlee_core grantlee_gui qgpgme sasl2

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
		databases/strigi \
		productivity/akonadi>=${MIN_AKONADI_VERSION} \
		security/cyrus-sasl2 \
		security/gpgme \
		security/libassuan \
		x11/grantlee \
		${MODKDE4_DEP_DIR}/nepomuk-core>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/nepomuk-widgets>=${MODKDE4_DEP_VERSION}

MODKDE4_SYSCONF_FILES =	dbus-1	share/examples

.include <bsd.port.mk>
