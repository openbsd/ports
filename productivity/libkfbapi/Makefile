# $OpenBSD: Makefile,v 1.5 2014/07/11 09:58:54 espie Exp $

CATEGORIES =	productivity
COMMENT =	library for accessing Facebook services
V =		1.0
DISTNAME =	libkfbapi-$V
REVISION =	3

EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	${MASTER_SITE_KDE:=stable/libkfbapi/$V/src/}

SHARED_LIBS =   kfbapi			0.0

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kabc ${KDE4LIB}/kcalcore ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kdewebkit ${KDE4LIB}/kio ${KDE4LIB}/kmime
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/kpimutils ${KDE4LIB}/kresources
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += qjson soprano

MODULES =		x11/kde4 devel/gettext
MODKDE4_USE =		libs pim
MODKDE4_LIB_LINKS =	Yes

LIB_DEPENDS =		devel/qjson

.include <bsd.port.mk>
