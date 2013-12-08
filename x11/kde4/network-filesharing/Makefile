# $OpenBSD: Makefile,v 1.1.1.1 2013/12/08 18:16:12 zhuk Exp $

COMMENT =	KDE network file sharing components
DISTNAME =	kdenetwork-filesharing-${MODKDE4_VERSION}

CATEGORIES =	network
HOMEPAGE =	http://projects.kde.org/projects/kde/kdenetwork/kdenetwork-filesharing

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

MODKDE4_USE =	libs

RUN_DEPENDS =	net/samba

CONFIGURE_ARGS =	-DSAMBA_INSTALL:Bool=No

.include <bsd.port.mk>
