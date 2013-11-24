# $OpenBSD: Makefile,v 1.16 2013/11/24 19:56:32 zhuk Exp $

COMMENT =	KDE network applications collection
DISTNAME =	kdenetwork-${MODKDE4_VERSION}
REVISION =	2

SHARED_LIBS =	kgetcore		50.0 # 4.0
SHARED_LIBS +=	kopete			50.0 # 4.0
SHARED_LIBS +=	kopete_videodevice	50.0 # 4.0
SHARED_LIBS +=	kopeteaddaccountwizard	50.0 # 1.0
SHARED_LIBS +=	kopetechatwindow_shared	50.0 # 1.0
SHARED_LIBS +=	kopeteidentity		50.0 # 1.0
SHARED_LIBS +=	kopeteprivacy		50.0 # 1.0
SHARED_LIBS +=	kyahoo			50.0 # 1.0
SHARED_LIBS +=	oscar			50.0 # 1.0
SHARED_LIBS +=	kopete_oscar		50.0 # 4.4
SHARED_LIBS +=	kopete_otr_shared	50.0 # 1.0
SHARED_LIBS +=	kopetecontactlist	50.0 # 1.0
SHARED_LIBS +=	kopetestatusmenu	50.0 # 1.0
SHARED_LIBS +=	krdccore		50.0 # 4.4
SHARED_LIBS +=	krfbprivate		50.0 # 4.7
SHARED_LIBS +=	qgroupwise		50.0 # 4.10

WANTLIB =  c m pthread stdc++ z
WANTLIB += ICE SM X11 Xext Xdamage Xtst
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtTest lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kabc>=5 ${KDE4LIB}/kcmutils ${KDE4LIB}/kde3support
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kdnssd ${KDE4LIB}/kemoticons
WANTLIB += ${KDE4LIB}/kfile ${KDE4LIB}/khtml ${KDE4LIB}/kidletime
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kjs ${KDE4LIB}/knewstuff2
WANTLIB += ${KDE4LIB}/knotifyconfig ${KDE4LIB}/konq ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/kpimidentities ${KDE4LIB}/kprintutils
WANTLIB += ${KDE4LIB}/kresources ${KDE4LIB}/ktexteditor ${KDE4LIB}/ktorrent
WANTLIB += ${KDE4LIB}/kutils ${KDE4LIB}/kworkspace ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukquery ${KDE4LIB}/nepomukutils ${KDE4LIB}/plasma
WANTLIB += ${KDE4LIB}/qgpgme ${KDE4LIB}/solid
WANTLIB += gadu glib-2.0 gpg-error gpgme++-pthread gpgme-pthread idn
WANTLIB += assuan jasper jpeg meanwhile mms otr qca2 qimageblitz soprano
WANTLIB += streamanalyzer streams telepathy-qt4 xml2 xmms xslt

MODULES =	devel/gettext multimedia/phonon

MODKDE4_USE =	pim workspace

RUN_DEPENDS =	devel/desktop-file-utils \
		security/qca-ossl \
		x11/gtk+2,-guic

LIB_DEPENDS =	audio/xmms \
		databases/strigi \
		graphics/qimageblitz \
		multimedia/libmms \
		net/libgadu \
		net/libktorrent \
		net/meanwhile \
		net/telepathy/telepathy-qt \
		security/libotr>=4 \
		security/qca2 \
		${MODKDE4_DEP_DIR}/baseapps>=${MODKDE4_DEP_VERSION}

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_LibV4L2:Bool=Yes \
			-DWITH_LibVNCServer:Bool=No \
			-DWITH_Libmsn:Bool=No \
			-DWITH_LiboRTP:Bool=No \
			-DWITH_Mediastreamer:Bool=No

.include <bsd.port.mk>
