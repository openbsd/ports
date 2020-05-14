# $OpenBSD: Makefile,v 1.95 2020/05/14 12:35:32 ajacoutot Exp $

COMMENT-main =		KDE core libraries
COMMENT-en_US =		KDE en_US locale data
COMMENT-langlist =	list of languages supported by KDE
CATEGORIES =		devel
V =			4.14.10
DISTNAME =		kdelibs-$V
PKGNAME-main =		${DISTNAME}
PKGNAME-en_US =		kde4-locale-en_US-$V
PKGNAME-langlist =	kde4-langlist-$V
PKG_ARCH-en_US =	*
PKG_ARCH-langlist =	*
PKGSPEC-main =		kdelibs-${MODKDE4_SPEC}
REVISION-main =		21
REVISION-en_US =	1
REVISION-langlist =	1

DPB_PROPERTIES =	parallel tag:kde4

MASTER_SITES =	${MASTER_SITE_KDE:=Attic/applications/15.04.3/src/}

SHARED_LIBS =	kde3support          50.2      # .4.0
SHARED_LIBS +=	kdecore              50.2      # .5.0
SHARED_LIBS +=	kdefakes             50.2      # .5.0
SHARED_LIBS +=	kdesu                50.2      # .5.0
SHARED_LIBS +=	kdeui                50.2      # .5.0
SHARED_LIBS +=	kdnssd               51.0      # .2.0
SHARED_LIBS +=	khtml                51.0      # .5.0
SHARED_LIBS +=	kimproxy             50.2      # .4.0
SHARED_LIBS +=	kio                  50.3      # .5.0
SHARED_LIBS +=	kjs                  50.2      # .2.0
SHARED_LIBS +=	kjsembed             50.2      # .4.0
SHARED_LIBS +=	kmediaplayer         50.2      # .4.0
SHARED_LIBS +=	knotifyconfig        50.2      # .4.0
SHARED_LIBS +=	kntlm                50.2      # .1.0
SHARED_LIBS +=	kparts               50.2      # .4.0
SHARED_LIBS +=	krosscore            50.2      # .4.0
SHARED_LIBS +=	ktexteditor          50.2      # .4.0
SHARED_LIBS +=	kunittest            50.2      # .4.0
SHARED_LIBS +=	kutils               50.2      # .2.0
SHARED_LIBS +=	solid                50.2      # .4.0
SHARED_LIBS +=	threadweaver         50.2      # .4.0
SHARED_LIBS +=	kfile                50.2      # .4.0
SHARED_LIBS +=	knewstuff2           50.2      # .4.0
SHARED_LIBS +=	krossui              50.2      # .4.0
SHARED_LIBS +=  kpty                 50.2      # .4.0

SHARED_LIBS +=  kjsapi 			50.2
SHARED_LIBS +=	kdewebkit		50.2
SHARED_LIBS +=	knewstuff3		50.2
SHARED_LIBS +=	kunitconversion		50.2
SHARED_LIBS +=	plasma			50.2

SHARED_LIBS +=  kcmutils		50.2 # 4.7
SHARED_LIBS +=  kdeclarative		50.2 # 5.7
SHARED_LIBS +=  kemoticons		50.2 # 4.7
SHARED_LIBS +=  kidletime		50.2 # 4.7
SHARED_LIBS +=  kprintutils		50.2 # 4.7

SHARED_LIBS +=  nepomuk			50.2 # 4.9
SHARED_LIBS +=  nepomukquery		50.2 # 4.9
SHARED_LIBS +=  nepomukutils		50.2 # 4.9

# Each lib is used by corresponding binary in libexec/,
# so technically those are not plugins.
SHARED_LIBS +=	kdeinit4_kbuildsycoca4		50.2
SHARED_LIBS +=	kdeinit4_kconf_update		50.2
SHARED_LIBS +=	kdeinit4_kded4			50.2
SHARED_LIBS +=	kdeinit4_kio_http_cache_cleaner	50.2
SHARED_LIBS +=	kdeinit4_klauncher		50.2

WANTLIB-en_US =
WANTLIB-langlist =
WANTLIB-main += ${WANTLIB} c intl m pthread util z
WANTLIB-main += ${COMPILER_LIBCXX}
WANTLIB-main += ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xpm Xrender
WANTLIB-main += Half-2_5 Iex-2_5 IlmImf-2_5 IlmThread-2_5 Imath-2_5
WANTLIB-main += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtDeclarative
WANTLIB-main += lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtOpenGL
WANTLIB-main += lib/qt4/QtScript lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB-main += lib/qt4/QtWebKit lib/qt4/QtXml Xss Xtst
WANTLIB-main += aspell attica bz2 dbusmenu-qt enchant exslt fam
WANTLIB-main += gif lib/inotify/inotify jasper jpeg lzma
WANTLIB-main += png polkit-qt-core-1 qca soprano sopranoclient
WANTLIB-main += streamanalyzer streams xml2 xslt

MULTI_PACKAGES =	-main -langlist -en_US

MODULES =		multimedia/phonon
MODKDE4_USE =

BUILD_DEPENDS =		devel/bison \
			misc/shared-desktop-ontologies>=0.10 \
			misc/shared-mime-info \
			net/avahi \
			x11/grantlee

RUN_DEPENDS-en_US =	
RUN_DEPENDS-langlist =	
RUN_DEPENDS-main =	${RUN_DEPENDS} \
			devel/desktop-file-utils \
			devel/kf5/oxygen-icons \
			misc/shared-mime-info \
			misc/shared-desktop-ontologies \
			net/cagibi>=0.2.0p4 \
			sysutils/gamin \
			sysutils/upower \
			x11/dbus \
			x11/grantlee \
			x11/gtk+3,-guic \
			${BUILD_PKGPATH},-langlist>=${MODKDE4_DEP_VERSION} \
			${BUILD_PKGPATH},-en_US>=${MODKDE4_DEP_VERSION}

LIB_DEPENDS-en_US =
LIB_DEPENDS-langlist =
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			archivers/bzip2 \
			archivers/xz \
			databases/soprano>=${MIN_SOPRANO_VERSION} \
			databases/strigi \
			devel/libinotify \
			graphics/giflib \
			graphics/jasper \
			graphics/openexr \
			security/qca \
			sysutils/gamin \
			textproc/aspell/core \
			textproc/enchant \
			textproc/libxslt \
			productivity/attica \
			x11/dbusmenu-qt \
			x11/polkit-qt

# pcreposix clashes with regex stuff from base
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_PCRE=TRUE \
			-DKJS_FORCE_DISABLE_PCRE=TRUE

# and do not have this stuff at all
CONFIGURE_ARGS +=	-DWITH_ACL:Bool=FALSE \
			-DWITH_GSSAPI:Bool=FALSE \
			-DWITH_HSPELL:Bool=FALSE \
			-DWITH_HUpnp:Bool=FALSE \
			-DWITH_UDev:Bool=FALSE \
			-DWITH_GSSAPI:Bool=FALSE

# some basic defines
CONFIGURE_ARGS +=	-D_KDE_DEFAULT_HOME_POSTFIX:String="4" \
			-DKDE_DISTRIBUTION_TEXT:String="OpenBSD packages" \
			-DKDE4_AUTH_BACKEND_NAME:String="PolkitQt-1" \
			-DKDESU_USE_DOAS_DEFAULT:Bool=TRUE \
			-DInotify_RPATH=${LOCALBASE}/lib/inotify

# New CMake modules, to be pushed upstream (KDE or CMake)
NEW_CMAKE_MODULES =	FindInotify

# Reimplemented CMake modules, because previous were totally broken
REWR_CMAKE_MODULES =	FindKexiv2 FindXine FindXKB FindPolkitQt

# Contain (required) additional functionality compared to system ones
WRAP_CMAKE_MODULES =	FindLibXslt

MODKDE4_SYSCONF_FILES =	dbus-1	share/examples/kde \
			xdg	share/examples

TEST_IS_INTERACTIVE =	X11
TEST_DEPENDS =		${BUILD_PKGPATH}

post-extract:
.for M in ${NEW_CMAKE_MODULES} ${REWR_CMAKE_MODULES}
	cp ${FILESDIR}/${M}.cmake ${WRKSRC}/cmake/modules/${M}.cmake
.endfor
.for M in ${WRAP_CMAKE_MODULES}
	${SUBST_CMD} -m 444 -c ${FILESDIR}/${M}.cmake \
	    ${WRKSRC}/cmake/modules/${M}.cmake
.endfor
	cp ${FILESDIR}/config-util.h.cmake ${WRKSRC}/kdecore/util/
	cp ${FILESDIR}/ConfigureChecks.cmake ${WRKSRC}/kdecore/util/
	mv ${WRKSRC}/doc/kjscmd/man-kjscmd{,4}.1.docbook

pre-configure:
	perl -pi -e 's/\bkjscmd\b/$$&4/g' ${WRKSRC}/doc/kjscmd/*
	${SUBST_CMD} ${WRKSRC}/kio/kio/ksambashare.cpp ${WRKSRC}/kdesu/su.cpp

.include <bsd.port.mk>
