COMMENT =		QtWebKit with a more modern WebKit code base

USE_WXNEEDED =		Yes
USE_NOBTCFI =		Yes
FIX_EXTRACT_PERMISSIONS = Yes

CATEGORIES =		www

DPB_PROPERTIES =	parallel

VERSION =		5.212.0alpha4
DISTNAME =		qtwebkit-${VERSION:C/alpha/-alpha/}
PKGNAME =		qtwebkit-${VERSION}
PKGSPEC =		qtwebkit->=${VERSION}v0

EPOCH =			0
REVISION =		16

SHARED_LIBS +=  Qt5WebKit               3.1 # 5.9
SHARED_LIBS +=  Qt5WebKitWidgets        3.1 # 5.9
SHARED_LIBS +=  JavaScriptCore          0.0 # 5.212.9
SHARED_LIBS +=  WebCore                 1.0 # 5.212.9
SHARED_LIBS +=  WebKit2                 0.1 # 5.212.9
SHARED_LIBS +=  WTF                     0.0 # 5.212.9

# Mostly LGPLv2.1 or LGPLv3 for code; FDLv1.3 for documentation.
# Some third-party parts are BSD-licensed.
# Also, many parts have are dual-licensed having either commercial, GPL,
# Apache 2.0 or other type of license as an alternative option.
# A few components, including QtWebEngine, are LGPLv3 only, no LGPLv2.1.
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Positioning
WANTLIB += Qt5PrintSupport Qt5Qml Qt5QmlModels Qt5Quick Qt5Sensors
WANTLIB += Qt5WebChannel Qt5Widgets X11 Xcomposite Xrender c gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstfft-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 hyphen icui18n icuuc jpeg m png sqlite3
WANTLIB += webp xml2 xslt z

SITES =		https://github.com/annulen/webkit/releases/download/${DISTNAME}/

MODULES =		devel/cmake \
			lang/python \
			lang/ruby \
			x11/qt5

# Override to unbreak ninja build
CONFIGURE_STYLE =	cmake

# Remove default "first" target and build all
ALL_TARGET =

MODPY_RUNDEP =		No
MODRUBY_RUNDEP =	No

BUILD_DEPENDS =		devel/bison \
			devel/gperf \
			devel/libsoup \
			geo/geoclue2 \
			x11/dbus

RUN_DEPENDS =		geo/geoclue2 \
			x11/dbus

# avoid using wrong $VERSION
RUN_DEPENDS-examples =

# no leveldb dependency, requires -lmemenv; QtWebKit uses internal version
LIB_DEPENDS =		databases/sqlite3 \
			graphics/libwebp \
			multimedia/gstreamer1/core \
			multimedia/gstreamer1/plugins-base \
			textproc/icu4c \
			textproc/libxslt \
			graphics/libwebp \
			textproc/hyphen \
			x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtlocation>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtsensors>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtwebchannel>=${QT5_VERSION},<${QT5_NEXT_VERSION}

CONFIGURE_ARGS +=	-DENABLE_API_TESTS=OFF \
			-DENABLE_QT_WEBCHANNEL=ON \
			-DENABLE_TOOLS=OFF \
			-DPORT=Qt \
			-DSHARED_CORE=ON \
			-DUSE_GSTREAMER=ON \
			-DUSE_LD_GOLD=OFF \
			-DUSE_QT_MULTIMEDIA=OFF \
			-DUSE_SYSTEM_MALLOC=ON \
			-DUSE_WOFF2=OFF

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_PREFIX="${WRKINST}${TRUEPREFIX}" \
			-DECM_MKSPECS_INSTALL_DIR=${WRKINST}${MODQT_LIBDIR}/mkspecs/modules \
			-DKDE_INSTALL_INCLUDEDIR=${WRKINST}${MODQT_INCDIR} \
			-DKDE_INSTALL_LIBEXECDIR=${WRKINST}${MODQT_LIBDIR}/libexec \
			-DKDE_INSTALL_SHAREDSTATEDIR=/var \
			-DKDE_INSTALL_SYSCONFDIR=/etc \
			-DKDE_INSTALL_MANDIR=${WRKINST}/man \
			-DKDE_INSTALL_QTPLUGINDIR=${WRKINST}${MODQT_LIBDIR}/plugins \
			-DKDE_INSTALL_LIBDIR=${WRKINST}${MODQT_LIBDIR} \
			-DKDE_INSTALL_QMLDIR=${WRKINST}${MODQT_LIBDIR}/qml

CONFIGURE_ARGS +=	-DPYTHON_EXECUTABLE=${MODPY_BIN}

.include <bsd.port.arch.mk>

# sync with Source/JavaScriptCore/assembler/MacroAssembler.h
.if ${MACHINE_ARCH} != "aarch64" && ${MACHINE_ARCH} != "amd64" && \
    ${MACHINE_ARCH} != "arm" && ${MACHINE_ARCH} != "i386" && \
    ${MACHINE_ARCH} != "mips64" && ${MACHINE_ARCH} != "mips64el"
# #error "The MacroAssembler is not supported on this platform."
CONFIGURE_ARGS +=	-DENABLE_JIT=OFF
CONFIGURE_ARGS +=	-DENABLE_LLINT_C_LOOP=ON
.endif

.if ${MACHINE_ARCH} == "aarch64"
# dwz fails when compressing debug symbols;
# assertion "off == cu_size" failed: file "dwz.c", line 9607, function "recompute_abbrevs"
DWZ = :
.endif

# ld.lld does not have this option
# save memory on 32bit arches
.if !${PROPERTIES:Mlld} && ${MACHINE_ARCH} != "amd64"
LDFLAGS +=		-Wl,--no-keep-memory
.endif

post-install:
	find ${WRKINST} -type f -exec perl -pi -e 's,${WRKINST},,g;' {} +

.include <bsd.port.mk>

.if ${CHOSEN_COMPILER} == "base-clang"
CXXFLAGS +=		-fno-ret-protector
.endif
