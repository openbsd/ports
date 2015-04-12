# $OpenBSD: Makefile,v 1.3 2015/04/12 18:17:18 zhuk Exp $

COMMENT =	KDE network file sharing components
DISTNAME =	kdenetwork-filesharing-${MODKDE4_VERSION}
REVISION =	0

CATEGORIES =	net
HOMEPAGE =	http://projects.kde.org/projects/kde/kdenetwork/kdenetwork-filesharing

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

MODKDE4_USE =	libs

RUN_DEPENDS =	net/samba

CONFIGURE_ARGS =	-DSAMBA_INSTALL:Bool=No

.include <bsd.port.mk>
