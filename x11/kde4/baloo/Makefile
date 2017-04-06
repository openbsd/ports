# $OpenBSD: Makefile,v 1.10 2017/04/06 10:27:14 espie Exp $

COMMENT =	KDE file search and metadata handling framework
DISTNAME =	baloo-${MODKDE4_VERSION}
REVISION =	4

CATEGORIES =	productivity sysutils
HOMEPAGE =	http://projects.kde.org/projects/kde/kdelibs/baloo

DPB_PROPERTIES =	parallel

SHARED_LIBS =	baloocore		2.0
SHARED_LIBS +=	baloofiles		2.0
SHARED_LIBS +=	baloopim		2.0
SHARED_LIBS +=	balooxapian		2.0
SHARED_LIBS +=	balooqueryparser	0.0

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/akonadi-kde ${KDE4LIB}/akonadi-kmime
WANTLIB += ${KDE4LIB}/kabc ${KDE4LIB}/kcalcore ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kfilemetadata ${KDE4LIB}/kio ${KDE4LIB}/kidletime
WANTLIB += ${KDE4LIB}/kmime ${KDE4LIB}/kpimutils ${KDE4LIB}/kresources
WANTLIB += ${KDE4LIB}/plasma ${KDE4LIB}/solid
WANTLIB += qjson xapian

MODKDE4_USE =	pim libs
MODKDE4_SYSCONF_FILES =	dbus-1	share/examples/kde

RUN_DEPENDS =	x11/gtk+3,-guic

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=	x11/dbus,-suid

LIB_DEPENDS =	databases/xapian-core \
		devel/qjson \
		${MODKDE4_DEP_DIR}/kfilemetadata>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
