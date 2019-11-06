# $OpenBSD: Makefile,v 1.16 2019/11/06 08:54:31 naddy Exp $

QT5NAME =		QtWebkit
REVISION =		10
COMMENT =		old Webkit integration framework for Qt
USE_WXNEEDED =		Yes
DPB_PROPERTIES =	parallel
VERSION =		${QT5_WEBKIT_VERSION}
DIST_VERSION =		${QT5_WEBKIT_VERSION}

SHARED_LIBS +=		Qt5WebKit		2.1
SHARED_LIBS +=		Qt5WebKitWidgets	2.1

CATEGORIES =		www

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5OpenGL
WANTLIB += Qt5Positioning Qt5PrintSupport Qt5Qml Qt5Quick Qt5Sensors
WANTLIB += Qt5Sql Qt5WebChannel Qt5Widgets X11 Xext Xrender c
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstpbutils-1.0 gstreamer-1.0 gstvideo-1.0
WANTLIB += icudata icui18n icuuc intl jpeg m png sqlite3 webp
WANTLIB += xml2 xslt z

MASTER_SITES =		https://download.qt.io/community_releases/${DIST_VERSION:R}/${DIST_VERSION}-final/

MODULES =		perl lang/python lang/ruby
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
			x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtlocation>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtsensors>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtwebchannel>=${QT5_VERSION},<${QT5_NEXT_VERSION}

MAKE_ENV =		NINJA_PATH="${LOCALBASE}/bin/ninja" \
			PYTHON=${MODPY_BIN} \
			RUBY=${RUBY}

MAKE_FLAGS =		PYTHON=${MODPY_BIN} \
			RUBY=${RUBY}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_tests

#MODQMAKE_ARGS =		WEBKIT_CONFIG+=web_audio

# See qtbase/tests/README for details
TEST_IS_INTERACTIVE =	X11
TEST_DEPENDS =		${MODPY_RUN_DEPENDS} \
			${MODRUBY_RUN_DEPENDS} \
			audio/sox \
			kde4-minimal-*|kdebase-*:meta/kde4,-minimal

pre-configure:
	# Python and Ruby are used for building mainly, those paths
	# do not get into final packages.
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	ln -sf ${RUBY} ${WRKDIR}/bin/ruby

	cd ${WRKSRC}; ${MODPY_BIN_ADJ} \
		`find . -name '*.py'` \
		`egrep -Rl '(env |bin/)python' Tools` \
		Source/WebCore/inspector/generate-inspector-protocol-version \
		Source/WebCore/html/parser/create-html-entity-table

	cd ${WRKSRC}; ${MODRUBY_RUBY_ADJ} \
		`find . -name '*.rb'` \
		Tools/Scripts/check-for-webkit-framework-include-consistency \
		Tools/Scripts/display-profiler-output \
		Tools/Scripts/check-for-inappropriate-macros-in-external-headers \
		Tools/Scripts/roll-over-ChangeLogs \
		Tools/Scripts/check-for-inappropriate-files-in-framework \
		Tools/Scripts/test-webkitruby \
		Tools/Scripts/clean-header-guards \
		Tools/Scripts/bencher \
		Source/WebKit/WebKit.vcxproj/WebKitExportGenerator/make-export-file-generator \
		Source/WebCore/make-export-file-generator \
		Source/JavaScriptCore/JavaScriptCore.vcxproj/LLInt/LLIntDesiredOffsets/build-LLIntDesiredOffsets.sh \
		Source/JavaScriptCore/JavaScriptCore.vcxproj/LLInt/LLIntAssembly/build-LLIntAssembly.sh

	cd ${WRKSRC}; perl -pi.otheradj \
		-e 's,/usr/bin/(env )?python\b,${MODPY_BIN},g;' \
		-e 's,/usr/bin/(env )?ruby\b,${RUBY},g;' \
		-e 's,(/usr)?/bin/(env )?bash\b,/bin/ksh,g;' \
		Tools/BuildSlaveSupport/gtk/pulseaudio/run \
		Tools/Scripts/old-run-webkit-tests \
		Tools/Scripts/run-webkit-websocketserver \
		Tools/Scripts/webkitpy/common/system/executive_unittest.py

	cd ${WRKSRC}; perl -pi.symname \
		-e 's/^__/_/;' \
		qtwebkit/Source/JavaScriptCore/JavaScriptCore.order

	cd ${WRKSRC}/Tools/qmake/config.tests; perl -pi.objdir \
		-e 's/^OBJECTS_DIR/#$$&/;' \
		*/*.pro

.include <bsd.port.mk>
.if ${CHOSEN_COMPILER} == "base-clang"
CXXFLAGS +=		-fno-ret-protector
.endif
