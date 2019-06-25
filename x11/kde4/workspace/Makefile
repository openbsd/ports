# $OpenBSD: Makefile,v 1.73 2019/06/25 20:25:24 sthen Exp $

COMMENT =	KDE workspace
DISTNAME =	kde-workspace-4.11.21
REVISION =	31

MASTER_SITES =	${MASTER_SITE_KDE:=Attic/applications/15.04.3/src/}

# TODO:
# Port ksysguard to OpenBSD (sensors framework, lsof(1) call replace and others).
#
# Use something else instead of pciutils.
#
# -- Performing Test HAVE_SETLOGIN
# systrace: deny user: pers, prog: /usr/ports/pobj/kde-workspace-4.7.1/build-i386/CMakeFiles/CMakeTmp/cmTryCompileExec, pid: 19037(0)[20572], policy: /usr/bin/
# env, filters: 233, syscall: native-setlogin(50), args: 4
# -- Performing Test HAVE_SETLOGIN - Success

SHARED_LIBS =	kdecorations			51.0 # 4.7
SHARED_LIBS +=	kephal				51.0 # 4.7
SHARED_LIBS +=	kfontinst			51.0 # 4.7
SHARED_LIBS +=	kfontinstui			51.0 # 4.7
SHARED_LIBS +=	khotkeysprivate			51.0 # 4.7
SHARED_LIBS +=	kickoff				51.0
SHARED_LIBS +=	kscreensaver			51.0 # 5.0
SHARED_LIBS +=	ksgrd				51.0 # 4.7
SHARED_LIBS +=	ksignalplotter			51.0 # 4.7
SHARED_LIBS +=	kwineffects			51.0 # 1.0
#SHARED_LIBS +=	kwin4effects			0.0 # 1.0
#SHARED_LIBS +=	kwinnvidiahack			1.0 # 4.7
SHARED_LIBS +=  kwinglutils			51.0 # 1.0
#SHARED_LIBS +=  kwin4glutils			0.0 # 1.0
#SHARED_LIBS +=	kwinv4effects			0.0 # 1.0
#SHARED_LIBS +=	kwinv4glutils			0.0 # 1.0
SHARED_LIBS +=	kworkspace			51.0 # 4.7
SHARED_LIBS +=	lsofui				51.0 # 4.7
SHARED_LIBS +=	oxygenstyle			51.0 # 4.7
SHARED_LIBS +=	oxygenstyleconfig		51.0 # 4.7
SHARED_LIBS +=	plasma-geolocation-interface	51.0 # 4.7
SHARED_LIBS +=	plasma_applet-system-monitor	51.0 # 4.7
SHARED_LIBS +=	plasmaclock			51.0 # 4.7
SHARED_LIBS +=	plasmagenericshell		51.0 # 4.7
SHARED_LIBS +=	powerdevilconfigcommonprivate	51.0 # 0.1
SHARED_LIBS +=	powerdevilcore			51.0 # 0.1
SHARED_LIBS +=	powerdevilui			51.0
SHARED_LIBS +=	processcore			51.0 # 4.7
SHARED_LIBS +=	processui			51.0 # 4.7
#SHARED_LIBS +=	solidcontrol			1.0 # 4.7
#SHARED_LIBS +=	solidcontrolifaces		1.0 # 4.7
SHARED_LIBS +=	systemsettingsview		51.0
SHARED_LIBS +=	taskmanager			51.0 # 4.7
SHARED_LIBS +=	weather_ion			51.0 # 6.0

WANTLIB =  c m pthread util z intl
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL GLU ICE SM X11 X11-xcb XRes Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xft Xi Xinerama Xrandr Xrender Xss Xtst Xxf86vm
WANTLIB += fontconfig freetype xkbfile
WANTLIB += xcb xcb-composite xcb-damage xcb-image xcb-keysyms
WANTLIB += xcb-randr xcb-render xcb-shape xcb-sync xcb-xfixes

WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtOpenGL
WANTLIB += lib/qt4/QtScript lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtTest
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml

WANTLIB += ${KDE4LIB}/akonadi-calendar
WANTLIB += ${KDE4LIB}/akonadi-kcal ${KDE4LIB}/akonadi-kde
WANTLIB += ${KDE4LIB}/akonadi-kmime ${KDE4LIB}/kabc ${KDE4LIB}/kactivities
WANTLIB += ${KDE4LIB}/kcalcore ${KDE4LIB}/kcalutils ${KDE4LIB}/kcmutils
WANTLIB += ${KDE4LIB}/kdeclarative ${KDE4LIB}/kdefakes ${KDE4LIB}/kdesu
WANTLIB += ${KDE4LIB}/kdewebkit ${KDE4LIB}/kdeui ${KDE4LIB}/kfile
WANTLIB += ${KDE4LIB}/kholidays ${KDE4LIB}/khtml ${KDE4LIB}/kidletime
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kjs ${KDE4LIB}/kmime
WANTLIB += ${KDE4LIB}/knewstuff3 ${KDE4LIB}/knotifyconfig ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/kpimutils ${KDE4LIB}/kpty ${KDE4LIB}/kresources
WANTLIB += ${KDE4LIB}/krosscore ${KDE4LIB}/ktexteditor
WANTLIB += ${KDE4LIB}/kunitconversion ${KDE4LIB}/microblog
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukcore
WANTLIB += ${KDE4LIB}/nepomukutils ${KDE4LIB}/plasma
WANTLIB += ${KDE4LIB}/solid ${KDE4LIB}/threadweaver
WANTLIB += ${KDE4LIB}/syndication

WANTLIB += ck-connector cln dbus-1 dbusmenu-qt glib-2.0 gps jpeg kvm png
WANTLIB += prison qalculate qimageblitz qjson soprano streamanalyzer
WANTLIB += usb xml2

MODULES =	multimedia/phonon lang/python lang/ruby
MODKDE4_USE =	pim

MODRUBY_BUILDDEP =	No

BUILD_DEPENDS =	misc/shared-desktop-ontologies \
		${MODKDE4_DEP_DIR}/py-kde>=${MODKDE4_DEP_VERSION} \

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/gettext,-runtime \
		misc/shared-desktop-ontologies \
		x11/gtk+3,-guic \
		x11/polkit-qt, \
		${MODKDE4_DEP_DIR}/base-artwork>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/py-kde>=${MODKDE4_DEP_VERSION}

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=	x11/dbus,-suid

LIB_DEPENDS =	databases/soprano \
		devel/libusb-compat \
		devel/qjson \
		graphics/qimageblitz \
		math/libqalculate \
		misc/gpsd \
		sysutils/consolekit \
		x11/dbusmenu-qt \
		${MODKDE4_DEP_DIR}/kactivities>=${MIN_ACTIVITIES_VERSION}

CONFIGURE_ARGS =	-DWITH_OpenGLES:Bool=False \
			-DWITH_PAM:Bool=False \
			-DWITH_PCIUTILS:Bool=False \
			-DWITH_RAW1394:Bool=False \
			-DWITH_Sensors:Bool=False \
			-DWITH_UDev:Bool=False \
			-DWITH_Wayland:Bool=False

MODKDE4_SYSCONF_FILES =	dbus-1		share/examples/kde \
			ksysguarddrc	share/examples/kde \
			kdm		share/examples/kde

SUBST_VARS =		SYSCONFDIR

# generate really default configuration
GENKDMCONF_FLAGS=	--in ${WRKINST}${SYSCONFDIR}/kdm --no-old
MAKE_ENV =		GENKDMCONF_FLAGS="${GENKDMCONF_FLAGS}"

# Note: struct ucred check results are not used, do not look there.

post-extract:
	cp ${FILESDIR}/checkpass_bsd.c ${WRKSRC}/kcheckpass/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/kdm/config.def

pre-build:
# static inline void: error: unknown type name 'inline';
# can't use CFLAGS because FindKDE4.cmake _appends_ -std=iso9899:1990 to it
	sed -i 's,-std=iso9899:1990,-std=c99,g' ${WRKBUILD}/build.ninja

post-install:
	ln -sf ${SYSCONFDIR}/kdm/faces ${PREFIX}/share/apps/kdm/faces
	mv ${PREFIX}/share/sounds/pop{,-kde4}.wav

.include <bsd.port.mk>
