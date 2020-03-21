# $OpenBSD: Makefile,v 1.21 2020/03/21 21:18:06 rsadowski Exp $

COMMENT =		QtWebKit with a more modern WebKit code base

USE_WXNEEDED =		Yes

CATEGORIES =		www

DPB_PROPERTIES =	parallel

VERSION =		${QT5_WEBKIT_VERSION}
DISTNAME =		qtwebkit-${QT5_WEBKIT_VERSION}-alpha3
PKGNAME =		qtwebkit-${QT5_WEBKIT_VERSION}
REVISION =		1

SHARED_LIBS +=  Qt5WebKit               3.0 # 5.9
SHARED_LIBS +=  Qt5WebKitWidgets        3.0 # 5.9
SHARED_LIBS +=  JavaScriptCore          0.0 # 5.212.9
SHARED_LIBS +=  WebCore                 0.0 # 5.212.9
SHARED_LIBS +=  WebKit2                 0.0 # 5.212.9
SHARED_LIBS +=  WTF                     0.0 # 5.212.9

# Mostly LGPLv2.1 or LGPLv3 for code; FDLv1.3 for documentation.
# Some third-party parts are BSD-licensed.
# Also, many parts have are dual-licensed having either commercial, GPL,
# Apache 2.0 or other type of license as an alternative option.
# A few components, including QtWebEngine, are LGPLv3 only, no LGPLv2.1.
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Positioning
WANTLIB += Qt5PrintSupport Qt5Qml Qt5Quick Qt5Sensors Qt5WebChannel
WANTLIB += Qt5Widgets X11 Xcomposite Xrender c gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += hyphen icui18n icuuc jpeg m png sqlite3 webp xml2 xslt

MASTER_SITES =		https://github.com/annulen/webkit/releases/download/${DISTNAME}/

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
			geo/geoclue \
			x11/dbus

RUN_DEPENDS =		geo/geoclue \
			x11/dbus

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

CONFIGURE_ARGS +=	-DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS}" \
			-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS}" \
			-DENABLE_API_TESTS=OFF \
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

.include <bsd.port.arch.mk>

# sync with Source/JavaScriptCore/assembler/MacroAssembler.h
.if ${MACHINE_ARCH} != "aarch64" && ${MACHINE_ARCH} != "amd64" && \
    ${MACHINE_ARCH} != "arm" && ${MACHINE_ARCH} != "i386" && \
    ${MACHINE_ARCH} != "mips64" && ${MACHINE_ARCH} != "mips64el"
# #error "The MacroAssembler is not supported on this platform."
CONFIGURE_ARGS +=	-DENABLE_JIT=OFF
CONFIGURE_ARGS +=	-DENABLE_LLINT_C_LOOP=ON
.endif

# ld.lld does not have this option
# save memory on 32bit arches
.if !${PROPERTIES:Mlld} && ${MACHINE_ARCH} != "amd64"
LDFLAGS +=		-Wl,--no-keep-memory
.endif

# __sync_add_and_fetch_8
.if ${MACHINE_ARCH} == "i386"
CFLAGS +=		-march=i686
CXXFLAGS +=		-march=i686
.endif

post-install:
	find ${WRKINST} -type f -exec perl -pi -e 's,${WRKINST},,g;' {} +

.include <bsd.port.mk>

.if ${CHOSEN_COMPILER} == "base-clang"
CXXFLAGS +=		-fno-ret-protector
.endif
