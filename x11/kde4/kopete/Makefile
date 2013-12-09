# $OpenBSD: Makefile,v 1.3 2013/12/09 17:21:07 zhuk Exp $

COMMENT =	multi-protocol instant messenger for KDE
DISTNAME =	kopete-${MODKDE4_VERSION}
REVISION =	1

CATEGORIES =	network
HOMEPAGE =	http://kopete.kde.org/

SHARED_LIBS +=	kopete			51.0 # 4.0
SHARED_LIBS +=	kopete_videodevice	51.0 # 4.0
SHARED_LIBS +=	kopeteaddaccountwizard	51.0 # 1.0
SHARED_LIBS +=	kopetechatwindow_shared	51.0 # 1.0
SHARED_LIBS +=	kopeteidentity		51.0 # 1.0
SHARED_LIBS +=	kopeteprivacy		51.0 # 1.0
SHARED_LIBS +=	kyahoo			51.0 # 1.0
SHARED_LIBS +=	oscar			51.0 # 1.0
SHARED_LIBS +=	kopete_oscar		51.0 # 4.4
SHARED_LIBS +=	kopete_otr_shared	51.0 # 1.0
SHARED_LIBS +=	kopetecontactlist	51.0 # 1.0
SHARED_LIBS +=	kopetestatusmenu	51.0 # 1.0
SHARED_LIBS +=	qgroupwise		51.0 # 4.10

WANTLIB =  c m pthread stdc++ z
WANTLIB += ICE SM X11 Xext
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kabc ${KDE4LIB}/kcmutils ${KDE4LIB}/kde3support
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kdnssd ${KDE4LIB}/kemoticons
WANTLIB += ${KDE4LIB}/khtml ${KDE4LIB}/kidletime ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/kjs ${KDE4LIB}/knewstuff2
WANTLIB += ${KDE4LIB}/knotifyconfig ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/kpimidentities ${KDE4LIB}/kprintutils
WANTLIB += ${KDE4LIB}/kresources ${KDE4LIB}/ktexteditor
WANTLIB += ${KDE4LIB}/kutils ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukutils ${KDE4LIB}/solid
WANTLIB += gadu glib-2.0 idn jasper jpeg meanwhile otr qca2
WANTLIB += qimageblitz soprano xml2 xmms xslt

MODULES =	multimedia/phonon
MODKDE4_USE =	pim

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS =	audio/xmms \
		devel/libidn \
		graphics/qimageblitz \
		net/libgadu \
		net/meanwhile \
		security/libotr>=4 \
		security/qca2

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_LibV4L2:Bool=Yes \
			-DWITH_Libmsn:Bool=No \
			-DWITH_LiboRTP:Bool=No \
			-DWITH_Mediastreamer:Bool=No

.include <bsd.port.mk>
