# $OpenBSD: Makefile,v 1.24 2015/05/28 10:17:30 pascal Exp $

COMMENT =	KDE personal information management
DISTNAME =	kdepim-4.14.6
PKGSPEC =	kdepim-${MODKDE4_SPEC}
REVISION =	1

MASTER_SITES =	${MASTER_SITE_KDE:=stable/applications/14.12.3/src/}

SHARED_LIBS =	akonadi_next			53.1
SHARED_LIBS +=	akregatorinterfaces		53.1
SHARED_LIBS +=	kaddressbookprivate		53.1
SHARED_LIBS +=	kcal_resourceblog		53.1
SHARED_LIBS +=	kleo				53.1
SHARED_LIBS +=	kontactprivate			53.1
SHARED_LIBS +=	korganizer_core			53.1
SHARED_LIBS +=	korganizerprivate		53.1
SHARED_LIBS +=	messagecore			53.1
SHARED_LIBS +=	messagelist			53.1
SHARED_LIBS +=	messageviewer			53.1
SHARED_LIBS +=	akregatorprivate		53.1
SHARED_LIBS +=	kcal_resourceremote		53.1
SHARED_LIBS +=	kdepim				53.1
SHARED_LIBS +=	kmailprivate			53.1
SHARED_LIBS +=	knodecommon			53.1
SHARED_LIBS +=	korganizer_interfaces		53.1
SHARED_LIBS +=	kpgp				53.1
SHARED_LIBS +=	ksieve				53.1

SHARED_LIBS +=  calendarsupport           53.1 # 4.7
SHARED_LIBS +=  eventviews                53.1 # 4.7
SHARED_LIBS +=  incidenceeditorsng        53.1 # 4.7
SHARED_LIBS +=  incidenceeditorsngmobile  53.1 # 4.7
SHARED_LIBS +=  kdepimdbusinterfaces      53.1 # 4.7
#SHARED_LIBS +=  kdepimmobileui            51.0 # 4.7
SHARED_LIBS +=  kdgantt2                  53.1 # 0.1
SHARED_LIBS +=  kleopatraclientcore       53.1 # 0.3
SHARED_LIBS +=  kleopatraclientgui        53.1 # 0.3
SHARED_LIBS +=  kmanagesieve              53.1 # 4.7
SHARED_LIBS +=  ksieveui                  53.1 # 4.7
SHARED_LIBS +=  mailcommon                53.1 # 4.7
SHARED_LIBS +=  mailimporter              53.1 # 4.9
SHARED_LIBS +=  messagecomposer           53.1 # 4.7
SHARED_LIBS +=  templateparser            53.1 # 4.7

SHARED_LIBS +=	pimcommon                 53.1 # 4.10

SHARED_LIBS +=  composereditorng          2.1 # 4.11
#SHARED_LIBS +=  grammar                   0.0 # 4.11
#SHARED_LIBS +=  pimactivity               0.0 # 4.11
SHARED_LIBS +=  sendlater                 2.1 # 4.11

SHARED_LIBS +=  grantleetheme             1.1 # 4.13
SHARED_LIBS +=  grantleethemeeditor       1.1 # 4.13
SHARED_LIBS +=  kaddressbookgrantlee      1.1 # 4.13
SHARED_LIBS +=  kdepimmobileui            1.1 # 4.13
SHARED_LIBS +=  knotesprivate             1.1 # 4.13
SHARED_LIBS +=  noteshared                1.1 # 4.13

SHARED_LIBS +=  followupreminder          0.1 # 4.14

SHARED_LIBS +=	calendarsupportcollectionpage	0.0 # 4.14

MODKDE4_USE =	pim

WANTLIB =  c m pthread z
WANTLIB += ICE SM X11 Xext Xss
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += lib/qt4/QtDeclarative lib/qt4/QtOpenGL 
WANTLIB += ${KDE4LIB}/akonadi-calendar ${KDE4LIB}/akonadi-contact
WANTLIB += ${KDE4LIB}/akonadi-kde ${KDE4LIB}/akonadi-kmime ${KDE4LIB}/kabc
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
WANTLIB += ${KDE4LIB}/nepomukutils
WANTLIB += ${KDE4LIB}/plasma ${KDE4LIB}/solid
WANTLIB += ${KDE4LIB}/syndication
WANTLIB += ${KDE4LIB}/baloocore ${KDE4LIB}/baloofiles
WANTLIB += ${KDE4LIB}/baloopim ${KDE4LIB}/kemoticons ${KDE4LIB}/kgapi2
WANTLIB += ${KDE4LIB}/kidletime ${KDE4LIB}/kutils
WANTLIB += ${KDE4LIB}/balooqueryparser ${KDE4LIB}/kfile
WANTLIB += akonadiprotocolinternals prison soprano
WANTLIB += assuan gpg-error gpgme++ gpgme++-pthread gpgme-pthread
WANTLIB += grantlee_core grantlee_gui qjson qgpgme sasl2

MODULES =	devel/gettext multimedia/phonon

# textproc/dblatex could be detected but will not be used
BUILD_DEPENDS =	devel/boost \
		misc/shared-desktop-ontologies \
		textproc/libxslt \
		${MODKDE4_DEP_DIR}/baloo-widgets>=${MODKDE4_DEP_VERSION}

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-desktop-ontologies \
		misc/shared-mime-info \
		x11/gtk+3,-guic \
		${MODKDE4_DEP_DIR}/baloo-widgets>=${MODKDE4_DEP_VERSION}

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=	x11/dbus,-suid

LIB_DEPENDS =	databases/soprano \
		productivity/akonadi>=${MIN_AKONADI_VERSION} \
		productivity/libkgapi,${MODKDE4_FLAVOR}>=2.1 \
		security/cyrus-sasl2 \
		security/gpgme \
		security/libassuan \
		x11/grantlee \
		${MODKDE4_DEP_DIR}/baloo>=${MODKDE4_DEP_VERSION}

MODKDE4_SYSCONF_FILES =	dbus-1	share/examples

.include <bsd.port.mk>
