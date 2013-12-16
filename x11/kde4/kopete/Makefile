# $OpenBSD: Makefile,v 1.5 2013/12/16 10:39:52 zhuk Exp $

COMMENT-main =		multi-protocol instant messenger for KDE
COMMENT-sounds =	notification sounds for Kopete
DISTNAME =		kopete-${MODKDE4_VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-sounds =	kde4-kopete-sounds-${MODKDE4_VERSION}
PKG_ARCH-sounds =	*
REVISION-main =		3

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

MULTI_PACKAGES =	-main -sounds

WANTLIB-sounds =
WANTLIB-main =  ${WANTLIB} c m pthread stdc++ z
WANTLIB-main += ICE SM X11 Xext
WANTLIB-main += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB-main += lib/qt4/QtNetwork lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB-main += ${KDE4LIB}/kabc ${KDE4LIB}/kcmutils ${KDE4LIB}/kde3support
WANTLIB-main += ${KDE4LIB}/kdeui ${KDE4LIB}/kdnssd ${KDE4LIB}/kemoticons
WANTLIB-main += ${KDE4LIB}/khtml ${KDE4LIB}/kidletime ${KDE4LIB}/kio
WANTLIB-main += ${KDE4LIB}/kjs ${KDE4LIB}/knewstuff2
WANTLIB-main += ${KDE4LIB}/knotifyconfig ${KDE4LIB}/kparts
WANTLIB-main += ${KDE4LIB}/kpimidentities ${KDE4LIB}/kprintutils
WANTLIB-main += ${KDE4LIB}/kresources ${KDE4LIB}/ktexteditor
WANTLIB-main += ${KDE4LIB}/kutils ${KDE4LIB}/nepomuk
WANTLIB-main += ${KDE4LIB}/nepomukutils ${KDE4LIB}/solid
WANTLIB-main += gadu glib-2.0 idn jasper jpeg meanwhile otr qca2
WANTLIB-main += qimageblitz soprano xml2 xmms xslt

MODULES =	multimedia/phonon
MODKDE4_USE =	pim

RUN_DEPENDS-sounds =
RUN_DEPENDS-main =	${RUN_DEPENDS} \
			kde4-kopete-sounds-*|kde3-kopete-sounds-*:${BASE_PKGPATH},-sounds \
			devel/desktop-file-utils \
			x11/gtk+2,-guic

LIB_DEPENDS-sounds =
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			audio/xmms \
			devel/libidn \
			graphics/qimageblitz \
			net/libgadu \
			net/meanwhile \
			security/libotr>=4 \
			security/qca2

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_LibV4L2:Bool=Yes \
			-DMOZPLUGIN_INSTALL_DIR=${LOCALBASE}/lib/mozilla/plugins \
			-DWITH_Libmsn:Bool=No \
			-DWITH_LiboRTP:Bool=No \
			-DWITH_Mediastreamer:Bool=No

.include <bsd.port.mk>
