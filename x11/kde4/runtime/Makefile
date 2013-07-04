# $OpenBSD: Makefile,v 1.4 2013/07/04 00:47:01 zhuk Exp $

COMMENT =	KDE core run-time components
DISTNAME =	kde-runtime-${MODKDE4_VERSION}

DPB_PROPERTIES =	parallel

SHARED_LIBS =	kwalletbackend 		50.0
SHARED_LIBS +=	molletnetwork 		50.0
#SHARED_LIBS +=	nepomukdatamanagement	0.0
SHARED_LIBS +=	kdeinit4_kcmshell4	51.0
SHARED_LIBS +=	kdeinit4_kglobalaccel	51.0
SHARED_LIBS +=	kdeinit4_khelpcenter	51.0
SHARED_LIBS +=	kdeinit4_kuiserver 	51.0
SHARED_LIBS +=	kdeinit4_kwalletd 	51.0

WANTLIB =  c m pthread stdc++ util
WANTLIB += Half ICE Iex IlmImf IlmThread Imath SM X11 Xcursor Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSvg
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kactivities ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeclarative
WANTLIB += ${KDE4LIB}/kdesu ${KDE4LIB}/kdeui ${KDE4LIB}/kdewebkit 
WANTLIB += ${KDE4LIB}/kdnssd ${KDE4LIB}/kemoticons ${KDE4LIB}/kfile
WANTLIB += ${KDE4LIB}/khtml ${KDE4LIB}/kio ${KDE4LIB}/kjs
WANTLIB += ${KDE4LIB}/kmediaplayer ${KDE4LIB}/knewstuff3
WANTLIB += ${KDE4LIB}/knotifyconfig ${KDE4LIB}/kparts ${KDE4LIB}/kpty
WANTLIB += ${KDE4LIB}/kxmlrpcclient ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukcore ${KDE4LIB}/nepomukutils ${KDE4LIB}/plasma
WANTLIB += ${KDE4LIB}/solid
WANTLIB += attica canberra exiv2 glib-2.0 jpeg pulse
WANTLIB += pulse-mainloop-glib smbclient ssh soprano

MODULES =	multimedia/phonon
MODKDE4_USE =	pim libs

BUILD_DEPENDS =	archivers/bzip2 \
		archivers/xz \
		devel/doxygen

RUN_DEPENDS =	archivers/bzip2 \
		archivers/xz \
		devel/desktop-file-utils

LIB_DEPENDS =	audio/libcanberra \
		audio/pulseaudio \
		databases/soprano \
		graphics/openexr \
		graphics/exiv2 \
		net/samba \
		productivity/attica \
		security/libssh \
		${MODKDE4_DEP_DIR}/kactivities>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/nepomuk-core>=${MODKDE4_DEP_VERSION}

# QNtrack depends on libnl, Linux-specific library.
CONFIGURE_ARGS =	-DWITH_ALSA:Bool=FALSE \
			-DCMAKE_DISABLE_FIND_PACKAGE_SLP:Bool=TRUE \
			-DCMAKE_DISABLE_FIND_PACKAGE_QNtrack:Bool=TRUE

MODKDE4_SYSCONF_FILES =	dbus-1	share/examples \
			xdg	share/examples

.include <bsd.port.mk>
