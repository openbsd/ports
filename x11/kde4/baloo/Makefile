# $OpenBSD: Makefile,v 1.1.1.1 2014/07/09 19:48:32 zhuk Exp $

COMMENT =	KDE file search and metadata handling framework
DISTNAME =	baloo-${MODKDE4_VERSION}

CATEGORIES =	productivity sysutils
HOMEPAGE =	http://projects.kde.org/projects/kde/kdelibs/baloo

DPB_PROPERTIES =	parallel

SHARED_LIBS =	baloocore	0.0
SHARED_LIBS +=	baloofiles	0.0
SHARED_LIBS +=	baloopim	0.0
SHARED_LIBS +=	balooxapian	0.0

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/akonadi-kde ${KDE4LIB}/akonadi-kmime
WANTLIB += ${KDE4LIB}/kabc ${KDE4LIB}/kdeui ${KDE4LIB}/kdnssd
WANTLIB += ${KDE4LIB}/kfilemetadata ${KDE4LIB}/kio ${KDE4LIB}/kidletime
WANTLIB += ${KDE4LIB}/kmime ${KDE4LIB}/kpimutils ${KDE4LIB}/kresources
WANTLIB += ${KDE4LIB}/plasma ${KDE4LIB}/solid
WANTLIB += qjson xapian

MODKDE4_USE =	pim libs
MODKDE4_SYSCONF_FILES =	dbus-1	share/examples

RUN_DEPENDS =	x11/gtk+2,-guic

LIB_DEPENDS =	databases/xapian-core \
		${MODKDE4_DEP_DIR}/kfilemetadata>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
