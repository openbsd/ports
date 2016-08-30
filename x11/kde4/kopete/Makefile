# $OpenBSD: Makefile,v 1.17 2016/08/30 09:54:14 jasper Exp $

COMMENT-main =		multi-protocol instant messenger for KDE
COMMENT-sounds =	notification sounds for Kopete
DISTNAME =		kopete-${MODKDE4_VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-sounds =	kde4-kopete-sounds-${MODKDE4_VERSION}
PKG_ARCH-sounds =	*
REVISION-main =		4
REVISION-sounds =	3

CATEGORIES =	net
HOMEPAGE =	http://kopete.kde.org/

SHARED_LIBS +=	kopete			52.0 # 4.0
SHARED_LIBS +=	kopete_videodevice	52.0 # 4.0
SHARED_LIBS +=	kopeteaddaccountwizard	52.0 # 1.0
SHARED_LIBS +=	kopetechatwindow_shared	52.0 # 1.0
SHARED_LIBS +=	kopeteidentity		52.0 # 1.0
SHARED_LIBS +=	kopeteprivacy		52.0 # 1.0
SHARED_LIBS +=	kyahoo			52.0 # 1.0
SHARED_LIBS +=	oscar			52.0 # 1.0
SHARED_LIBS +=	kopete_oscar		52.0 # 4.4
SHARED_LIBS +=	kopete_otr_shared	52.0 # 1.0
SHARED_LIBS +=	kopetecontactlist	52.0 # 1.0
SHARED_LIBS +=	kopetestatusmenu	52.0 # 1.0
SHARED_LIBS +=	qgroupwise		52.0 # 4.10

MULTI_PACKAGES =	-main -sounds

WANTLIB-sounds =
WANTLIB-main =  ${WANTLIB} c m pthread z
WANTLIB-main += X11 Xss
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
WANTLIB-main += qimageblitz soprano xml2 xslt

MODULES =	multimedia/phonon
MODKDE4_USE =	pim

RUN_DEPENDS-sounds =
RUN_DEPENDS-main =	${RUN_DEPENDS} \
			kde4-kopete-sounds-*|kde3-kopete-sounds-*:${BASE_PKGPATH},-sounds \
			devel/desktop-file-utils \
			x11/gtk+3,-guic

LIB_DEPENDS-sounds =
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			devel/libidn \
			graphics/qimageblitz \
			net/libgadu \
			net/meanwhile \
			security/libotr>=4 \
			security/qca2

# disabled until all GoogleTalk issues are resolved
#WANTLIB-main += crypto expat mediastreamer_base mediastreamer_voip
#WANTLIB-main += ortp ssl
#LIB_DEPENDS-main +=	net/ortp \
#			telephony/mediastreamer2

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_JsonCpp:Bool=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_LibV4L2:Bool=Yes \
			-DMOZPLUGIN_INSTALL_DIR=${LOCALBASE}/lib/mozilla/plugins \
			-DWITH_Libmsn:Bool=No \
			-DQT4_BUILD=Yes

# requires enabling of exceptions, thanks to roots in Boost via PIM
CONFIGURE_ARGS +=	-DWITH_Kleopatra:Bool=No

# for Kleopatra
#BUILD_DEPENDS =	devel/boost
#LIB_DEPENDS-main +=	${MODKDE4_DEP_DIR}/pim>=${MODKDE4_DEP_VERSION}

post-patch:
	cd ${WRKSRC}; perl -pi -e 's/X11_Xss_/X11_Xscreensaver_/g' \
		CMakeLists.txt \
		libkopete/CMakeLists.txt

.include <bsd.port.mk>
