# $OpenBSD: Makefile,v 1.24 2017/03/15 09:11:30 jca Exp $

COMMENT =	KDE PIM runtime support
DISTNAME =	kdepim-runtime-4.14.10

DPB_PROPERTIES =	parallel

MASTER_SITES =	${MASTER_SITE_KDE:=Attic/applications/15.04.3/src/}

SHARED_LIBS =	akonadi-filestore	53.0 # 4.7
#SHARED_LIBS +=	akonadi-xml		51.0 # 4.7
SHARED_LIBS +=	kdepim-copy		53.0 # 4.7
SHARED_LIBS +=	kmindexreader		53.0 # 4.7
SHARED_LIBS +=	maildir			53.0 # 4.7
SHARED_LIBS +=	folderarchivesettings	1.0

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB += ${KDE4LIB}/akonadi-calendar ${KDE4LIB}/akonadi-contact
WANTLIB += ${KDE4LIB}/akonadi-kabc ${KDE4LIB}/akonadi-kcal
WANTLIB += ${KDE4LIB}/akonadi-kde ${KDE4LIB}/akonadi-kmime
WANTLIB += ${KDE4LIB}/akonadi-notes ${KDE4LIB}/akonadi-socialutils
WANTLIB += ${KDE4LIB}/kabc ${KDE4LIB}/kalarmcal
WANTLIB += ${KDE4LIB}/kcal ${KDE4LIB}/kcalcore ${KDE4LIB}/kcalutils
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdewebkit ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kfbapi ${KDE4LIB}/kgapi2 ${KDE4LIB}/kidletime
WANTLIB += ${KDE4LIB}/kimap ${KDE4LIB}/kio ${KDE4LIB}/kmbox ${KDE4LIB}/kmime
WANTLIB += ${KDE4LIB}/knewstuff3 ${KDE4LIB}/knotifyconfig ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/kpimidentities ${KDE4LIB}/kpimtextedit
WANTLIB += ${KDE4LIB}/kpimutils ${KDE4LIB}/kresources ${KDE4LIB}/krosscore
WANTLIB += ${KDE4LIB}/mailtransport ${KDE4LIB}/microblog ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukutils ${KDE4LIB}/solid
WANTLIB += akonadiprotocolinternals qjson soprano

MODULES =	multimedia/phonon

BUILD_DEPENDS =	devel/boost \
		misc/shared-desktop-ontologies \
		misc/shared-mime-info \
		textproc/raptor

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-desktop-ontologies \
		misc/shared-mime-info \
		x11/gtk+3,-guic

LIB_DEPENDS =	databases/soprano \
		devel/qjson \
		productivity/akonadi>=${MIN_AKONADI_VERSION} \
		productivity/libkfbapi,${MODKDE4_FLAVOR}>=1.0 \
		productivity/libkgapi,${MODKDE4_FLAVOR}>=2.2.0 \
		${MODKDE4_DEP_DIR}/pimlibs>=${DISTNAME:C/.*-//}

# Long dependency chain, not ported yet.
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Libkolab=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_Libkolabxml=Yes

# too lazy to port those, too
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_AccountsQt=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_SignOnQt=Yes

SUBST_VARS =	LOCALBASE

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
