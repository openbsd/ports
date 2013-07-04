# $OpenBSD: Makefile,v 1.5 2013/07/04 00:46:50 zhuk Exp $

COMMENT =	KDE PIM runtime support
DISTNAME =	kdepim-runtime-${MODKDE4_VERSION}

DPB_PROPERTIES =	parallel

SHARED_LIBS =	akonadi-filestore	50.0 # 4.7
SHARED_LIBS +=	akonadi-xml		50.0 # 4.7
SHARED_LIBS +=	kdepim-copy		50.0 # 4.7
SHARED_LIBS +=	kmindexreader		50.0 # 4.7
SHARED_LIBS +=	maildir			50.0 # 4.7

WANTLIB =  c m pthread stdc++ xml2
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB += ${KDE4LIB}/akonadi-calendar ${KDE4LIB}/akonadi-contact
WANTLIB += ${KDE4LIB}/akonadi-kabc ${KDE4LIB}/akonadi-kcal
WANTLIB += ${KDE4LIB}/akonadi-kde ${KDE4LIB}/akonadi-kmime
WANTLIB += ${KDE4LIB}/akonadi-notes ${KDE4LIB}/kabc ${KDE4LIB}/kalarmcal
WANTLIB += ${KDE4LIB}/kcal ${KDE4LIB}/kcalcore ${KDE4LIB}/kcalutils
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdewebkit ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kgapi ${KDE4LIB}/kgapi2 ${KDE4LIB}/kidletime
WANTLIB += ${KDE4LIB}/kimap ${KDE4LIB}/kio ${KDE4LIB}/kmbox ${KDE4LIB}/kmime
WANTLIB += ${KDE4LIB}/knewstuff3 ${KDE4LIB}/knotifyconfig ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/kpimidentities ${KDE4LIB}/kpimtextedit
WANTLIB += ${KDE4LIB}/kpimutils ${KDE4LIB}/kresources ${KDE4LIB}/krosscore
WANTLIB += ${KDE4LIB}/mailtransport ${KDE4LIB}/microblog ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukcore ${KDE4LIB}/nepomukquery
WANTLIB += ${KDE4LIB}/nepomukutils
WANTLIB += akonadiprotocolinternals qjson solid soprano streamanalyzer
WANTLIB += streams

MODULES =	multimedia/phonon

BUILD_DEPENDS =	devel/boost \
		textproc/raptor

LIB_DEPENDS =	databases/soprano \
		databases/strigi \
		devel/qjson \
		productivity/akonadi>=${MIN_AKONADI_VERSION} \
		productivity/libkgapi>=2.0.1 \
		${MODKDE4_DEP_DIR}/pimlibs>=${MODKDE4_VERSION}

# Long dependency chain, not ported yet.
CONFIGURE_ARGS=	-DCMAKE_DISABLE_FIND_PACKAGE_Libkolab:Bool=Yes \
		-DCMAKE_DISABLE_FIND_PACKAGE_Libkolabxml:Bool=Yes

.include <bsd.port.mk>
