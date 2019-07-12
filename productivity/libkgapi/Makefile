# $OpenBSD: Makefile,v 1.11 2019/07/12 20:48:58 sthen Exp $

CATEGORIES =	productivity
COMMENT =	link Akonadi to Google services
V =		2.2.0
DISTNAME =	libkgapi-$V
REVISION =	1

HOMEPAGE =	http://www.progdan.cz/category/akonadi-google/

EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	${MASTER_SITE_KDE:=stable/libkgapi/$V/src/}

#SHARED_LIBS =   kgapi			1.0
SHARED_LIBS +=	kgapi2			2.0

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB =  m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kabc ${KDE4LIB}/kcalcore ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kdewebkit ${KDE4LIB}/kio ${KDE4LIB}/kmime
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/kresources ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukutils
WANTLIB += qjson soprano

MODULES =		x11/kde4
MODKDE4_USE =		libs pim
MODKDE4_LIB_LINKS =	Yes

LIB_DEPENDS =		devel/qjson

.include <bsd.port.mk>
