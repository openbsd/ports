# $OpenBSD: Makefile,v 1.5 2015/05/28 10:17:28 pascal Exp $

COMMENT =	dialer and pppd front-end for KDE
DISTNAME =	kppp-${MODKDE4_VERSION}
REVISION =	2

CATEGORIES =	net
HOMEPAGE =	http://projects.kde.org/projects/kde/kdenetwork/kppp

WANTLIB =  c m pthread
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kde3support ${KDE4LIB}/kdeui ${KDE4LIB}/kio

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_ARGS =	-DHAVE_NET_IF_PPP_H:Bool=Yes

.include <bsd.port.mk>
