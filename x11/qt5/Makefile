# $OpenBSD: Makefile,v 1.28 2015/04/22 14:12:03 zhuk Exp $

SHARED_ONLY =		Yes
ONLY_FOR_ARCHS =	${GCC4_ARCHS}

VERSION =		5.4.1
ENGINIO_VERSION =	1.1.1
DISTNAME =		qt-everywhere-opensource-src-${VERSION}

COMMENT-main =		C++ general-purpose toolkit
COMMENT-examples =	examples for Qt5
COMMENT-html =		offline HTML documentation for Qt5
COMMENT-mysql =		MySQL plugin for Qt5
COMMENT-psql =		PostgresSQL plugin for Qt5
COMMENT-qch =		offline QCH documentation for Qt5
COMMENT-sqlite2 =	SQLite 2.x plugin for Qt5
COMMENT-tds =		TDS plugin for Qt5

PKGNAME-main =		qt5-${VERSION}
PKGNAME-examples =	qt5-examples-${VERSION}
PKGNAME-html =		qt5-html-${VERSION}
PKGNAME-mysql =		qt5-mysql-${VERSION}
PKGNAME-psql =		qt5-postgresql-${VERSION}
PKGNAME-qch =		qt5-qch-${VERSION}
PKGNAME-sqlite2 =	qt5-sqlite2-${VERSION}
PKGNAME-tds =		qt5-tds-${VERSION}
REVISION-main =		0

PKG_ARCH-html =		*
PKG_ARCH-qch =		*

DPB_PROPERTIES =	parallel nojunk

SHARED_LIBS =		Enginio			1.0
SHARED_LIBS +=		Qt5Bluetooth		1.0
SHARED_LIBS +=		Qt5CLucene		1.0
SHARED_LIBS +=		Qt5Concurrent		1.0
SHARED_LIBS +=		Qt5Core			1.0
SHARED_LIBS +=		Qt5DBus			1.0
SHARED_LIBS +=		Qt5Declarative		1.0
SHARED_LIBS +=		Qt5Designer		1.0
SHARED_LIBS +=		Qt5DesignerComponents	1.0
SHARED_LIBS +=		Qt5Gui			1.0
SHARED_LIBS +=		Qt5Help			1.0
SHARED_LIBS +=		Qt5Multimedia		1.0
SHARED_LIBS +=		Qt5MultimediaQuick_p	1.0
SHARED_LIBS +=		Qt5MultimediaWidgets	1.0
SHARED_LIBS +=		Qt5Network		1.0
SHARED_LIBS +=		Qt5Nfc			1.0
SHARED_LIBS +=		Qt5OpenGL		1.0
SHARED_LIBS +=		Qt5Positioning		1.0
SHARED_LIBS +=		Qt5PrintSupport		1.0
SHARED_LIBS +=		Qt5Qml			1.0
SHARED_LIBS +=		Qt5Quick		1.0
SHARED_LIBS +=		Qt5QuickParticles	1.0
SHARED_LIBS +=		Qt5QuickTest		1.0
SHARED_LIBS +=		Qt5QuickWidgets		1.0
SHARED_LIBS +=		Qt5Script		1.0
SHARED_LIBS +=		Qt5ScriptTools		1.0
SHARED_LIBS +=		Qt5Sensors		1.0
SHARED_LIBS +=		Qt5SerialPort		1.0
SHARED_LIBS +=		Qt5Sql			1.0
SHARED_LIBS +=		Qt5Svg			1.0
SHARED_LIBS +=		Qt5Test			1.0
SHARED_LIBS +=		Qt5WebKit		1.0
SHARED_LIBS +=		Qt5WebKitWidgets	1.0
SHARED_LIBS +=		Qt5WebSockets		1.0
SHARED_LIBS +=		Qt5Widgets		1.0
SHARED_LIBS +=		Qt5X11Extras		1.0
SHARED_LIBS +=		Qt5Xml			1.0
SHARED_LIBS +=		Qt5XmlPatterns		1.0
#SHARED_LIBS +=		qgsttools_p		0.0

SHARED_LIBS-examples =	fftreal			1.0
SHARED_LIBS-examples +=	gruesensor		1.0
SHARED_LIBS +=		${SHARED_LIBS-examples}

# since 5.4
SHARED_LIBS +=		Qt5Location		0.0
SHARED_LIBS +=		Qt5WebChannel		0.0

CATEGORIES =		x11 devel
HOMEPAGE =		http://www.qt-project.org/
MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>


WANTLIB-main =  ${WANTLIB}
WANTLIB-main += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB-main += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB-main += cups fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB-main += gio-2.0 glib-2.0 gobject-2.0 gstapp-1.0
WANTLIB-main += gstaudio-1.0 gstbase-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB-main += gstvideo-1.0 gthread-2.0 gtk-x11-2.0 icudata icui18n
WANTLIB-main += icuuc iodbc jasper jpeg m mng openal pango-1.0 pangocairo-1.0
WANTLIB-main += pangoft2-1.0 pcre16 png pthread pulse sqlite3 tiff
WANTLIB-main += webp xcb xcb-glx xcb-icccm xcb-image xcb-keysyms xcb-randr
WANTLIB-main += xcb-render xcb-render-util xcb-shape xcb-shm xcb-sync
WANTLIB-main += xcb-xfixes xcb-xkb xkbcommon xkbcommon-x11 xml2 xslt z

WANTLIB-examples =  ${MODGCC4_CPPWANTLIB} GL c m pthread
WANTLIB-examples += Qt5Bluetooth Qt5Concurrent Qt5Core Qt5DBus Qt5Declarative
WANTLIB-examples += Qt5Gui Qt5Help Qt5Multimedia Qt5MultimediaWidgets Qt5Network
WANTLIB-examples += Qt5Nfc Qt5OpenGL Qt5Positioning Qt5PrintSupport Qt5Qml
WANTLIB-examples += Qt5Quick Qt5QuickTest Qt5Script Qt5ScriptTools Qt5Sensors
WANTLIB-examples += Qt5Sql Qt5Svg Qt5Test Qt5WebKit Qt5WebKitWidgets Qt5Widgets
WANTLIB-examples += Qt5Xml Qt5XmlPatterns

WANTLIB-html =

WANTLIB-mysql =		${MODGCC4_CPPWANTLIB} Qt5Core Qt5Sql
WANTLIB-mysql +=	crypto m pthread mysqlclient_r ssl z

WANTLIB-psql =		${MODGCC4_CPPWANTLIB} Qt5Core Qt5Sql
WANTLIB-psql +=		m pthread pq

WANTLIB-qch =

WANTLIB-sqlite2 =	${MODGCC4_CPPWANTLIB} Qt5Core Qt5Sql
WANTLIB-sqlite2 +=	m pthread sqlite

WANTLIB-tds =		${MODGCC4_CPPWANTLIB} Qt5Core Qt5Sql
WANTLIB-tds +=		m pthread sybdb


# Mostly LGPLv2.1 or LGPLv3 for code; FDLv1.3 for documentation.
# Some third-party parts are BSD-licensed.
# Also, many parts have are dual-licensed having either commercial, GPL,
# Apache 2.0 or other type of license as an alternative option.
# A few components, including QtWebEngine, are LGPLv3 only, no LGPLv2.1.
PERMIT_PACKAGE_CDROM =	Yes

MULTI_PACKAGES =	-main -examples -html -mysql -psql -qch -sqlite2 -tds

MASTER_SITES =		http://master.qt-project.org/archive/qt/${VERSION:R}/${VERSION}/single/

MODULES =		gcc4 devel/gettext perl lang/python lang/ruby
MODGCC4_LANGS =		c++
MODGCC4_ARCHS =		*
MODPY_RUNDEP =		No
MODRUBY_RUNDEP =	No

# no leveldb dependency, requires -lmemenv; QtWebKit uses internal version
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			audio/openal \
			audio/pulseaudio \
			databases/iodbc \
			devel/atk \
			devel/pango \
			graphics/cairo \
			graphics/gdk-pixbuf2 \
			graphics/jasper \
			graphics/libmng \
			graphics/libwebp \
			multimedia/gstreamer1/core \
			multimedia/gstreamer1/plugins-base \
			print/cups,-libs \
			textproc/icu4c \
			textproc/libxslt \
			x11/gtk+2 \
			x11/xkbcommon

LIB_DEPENDS-examples =	${BUILD_PKGPATH},-main>=${VERSION:R} \
			${MODGCC4_CPPLIBDEP}

LIB_DEPENDS-html =

LIB_DEPENDS-mysql =	${BUILD_PKGPATH},-main>=${VERSION:R} \
			${MODGCC4_CPPLIBDEP} \
			databases/mariadb

LIB_DEPENDS-psql =	${BUILD_PKGPATH},-main>=${VERSION:R} \
			${MODGCC4_CPPLIBDEP} \
			databases/postgresql

LIB_DEPENDS-qch =

LIB_DEPENDS-sqlite2 =	${BUILD_PKGPATH},-main>=${VERSION:R} \
			${MODGCC4_CPPLIBDEP} \
			databases/sqlite

LIB_DEPENDS-tds =	${BUILD_PKGPATH},-main>=${VERSION:R} \
			${MODGCC4_CPPLIBDEP} \
			databases/freetds

BUILD_DEPENDS =		x11/dbus
# QtWebKit & Co. requirements
BUILD_DEPENDS +=	devel/flex \
			devel/bison \

RUN_DEPENDS-main =	${RUN_DEPENDS} \
			x11/dbus
RUN_DEPENDS-examples =
RUN_DEPENDS-html =
RUN_DEPENDS-mysql =
RUN_DEPENDS-psql =
RUN_DEPENDS-qch =
RUN_DEPENDS-sqlite2 =
RUN_DEPENDS-tds =

# Not used in Qt itself (implementation considered unstable),
# but used in QtWebKit.
BUILD_DEPENDS +=	devel/gperf \
			devel/harfbuzz \
			devel/libsoup
RUN_DEPENDS-main +=	devel/gperf \
			devel/harfbuzz \
			devel/libsoup

DESTDIRNAME =		INSTALL_ROOT

MAKE_ENV =		LD_LIBRARY_PATH=${WRKBUILD}/qtbase/lib \
			NINJA_PATH="${LOCALBASE}/bin/ninja" \
			PYTHON=${MODPY_BIN} \
			RUBY=${RUBY} \
			REAL_BUILD_ROOT=${WRKBUILD} \
			OPENBSD_CPPFLAGS="-isystem ${WRKDIR}/gcc-include"

MAKE_FLAGS =		-B -j ${MAKE_JOBS} \
			PYTHON=${MODPY_BIN} \
			RUBY=${RUBY}
.for _l _v in ${SHARED_LIBS}
  MAKE_FLAGS +=		LIB${_l}_VERSION=${_v}
.endfor

# qmake supports so-called "shadow" builds: it's like normal
# out-of-source build but build directory is required to be located
# under source root.
SEPARATE_BUILD =	Yes
WRKBUILD =		${WRKSRC}/build

CONFIGURE_STYLE =	simple

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_html no_tests
FLAVOR ?=

# readability macros
QT_BASEDIR =	${PREFIX}/lib/qt5
QT_INCDIR =	${PREFIX}/include/X11/qt5
QT_EXAMPLES =	${QT_BASEDIR}/examples
QT_DOC =	${PREFIX}/share/doc/qt5
QT_PLUGINSDIR =	${QT_BASEDIR}/plugins
QT_BINDIR =	${QT_BASEDIR}/bin
QT_PKGCFGDIR =	${QT_BASEDIR}/pkgconfig
QT_CMAKEDIR =	${QT_BASEDIR}/cmake

# generic args
CONFIGURE_ARGS =	-confirm-license \
			-opensource \
			-rpath \
			-shared \
			-verbose

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	-debug
.else
CONFIGURE_ARGS +=	-release
.endif

# paths
CONFIGURE_ARGS +=	-sysconfdir ${SYSCONFDIR} \
			-prefix ${QT_BASEDIR} \
			-plugindir ${QT_PLUGINSDIR} \
			-libdir ${QT_BASEDIR} \
			-headerdir ${QT_INCDIR} \
			-examplesdir ${QT_EXAMPLES} \
			-docdir ${QT_DOC} \
			-datadir ${QT_BASEDIR} \
			-bindir ${QT_BINDIR} \
			-R${X11BASE}/lib \
			-L${X11BASE}/lib

# other options
CONFIGURE_ARGS +=	-c++11 \
			-no-alsa \
			-no-journald \
			-no-mtdev \
			-opengl desktop \
			-system-sqlite \
			-system-xcb \

CONFIGURE_ENV =		MAKE=make \
			MAKEFLAGS="-j ${MAKE_JOBS}" \
			EXTRA_CPPFLAGS="-DLOCALBASE=\\\"${LOCALBASE}\\\" -DX11BASE=\\\"${X11BASE}\\\""

.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ENV += LDFLAGS="-Wl,--relax"
.endif
.include <bsd.port.arch.mk>

# QtWebkit (at least, maybe others) plays dirty games with inter-target
# dependencies, so we'd better use the target qmake always creates
# first, named "first".
ALL_TARGET =		first
FAKE_TARGET =		install
.if ${BUILD_PACKAGES:M-html}
ALL_TARGET +=		html_docs
FAKE_TARGET +=		install_html_docs
.endif
.if ${BUILD_PACKAGES:M-qch}
ALL_TARGET +=		qch_docs
FAKE_TARGET +=		install_qch_docs
.endif

.if !${BUILD_PACKAGES:M-examples}
CONFIGURE_ARGS +=	-nomake examples
.endif

.if ${FLAVOR:Mno_tests}
NO_TEST =		Yes
CONFIGURE_ARGS +=	-nomake tests
.endif

PROGRAMS5 =	assistant designer linguist lrelease lupdate moc pixeltool \
		qdbus qdoc qmake qml qtdiag rcc uic

# still need to check if those should get it into ${PREFIX}/bin
PROGRAMS_IGN =	lconvert \
		qcollectiongenerator \
		qdbuscpp2xml \
		qdbusviewer \
		qdbusxml2cpp \
		qdoc \
		qhelpconverter \
		qhelpgenerator \
		qlalr \
		qml \
		qml1plugindump \
		qmlbundle \
		qmlimportscanner \
		qmlmin \
		qmlplugindump \
		qmlprofiler \
		qmlscene \
		qmltestrunner \
		qmlviewer \
		qtdiag \
		qtpaths \
		syncqt.pl \
		xmlpatterns \
		xmlpatternsvalidator

# See qtbase/tests/README for details
TEST_IS_INTERACTIVE =	X11
TEST_TARGET =		check
TEST_DEPENDS =		${MODPY_RUN_DEPENDS} \
			${MODRUBY_RUN_DEPENDS} \
			audio/sox \
			kde4-minimal-*|kdebase-*:meta/kde4,-minimal

PATCHORIG =		.ports.orig

SUBST_VARS =		VERSION ENGINIO_VERSION

post-extract:
.if ${FLAVOR:Mno_examples}
	rm -f ${WRKDIST}/qtbase/examples/examples.pro
.endif
.if ${FLAVOR:Mno_tests}
	rm -f ${WRKDIST}/qtbase/tests/tests.pro
.endif

post-configure:
	# Fake configuration to make sure no Makefile will
	# try to use /usr/local/lib/qt5/bin/qdoc or
	# /usr/local/lib/qt5/bin/qhelpgenerator instead of
	# ${WRKBUILD}/qtbase/bin/* ones.
	mkdir -p ${WRKBUILD}/qtbase/mkspecs/modules
	(   echo "QT_TOOL.qdoc.binary  = ${WRKBUILD}/qtbase/bin/qdoc"; \
	    echo "QT_TOOL.qdoc.depends = core xml") \
	    >>${WRKBUILD}/qtbase/mkspecs/modules/qt_tool_qdoc.pri
	mkdir -p ${WRKBUILD}/qtbase/mkspecs/modules
	(   echo "QT_TOOL.qhelpgenerator.binary  = ${WRKBUILD}/qttools/bin/qhelpgenerator"; \
	    echo "QT_TOOL.qhelpgenerator.depends = core gui network help_private") \
	    >>${WRKBUILD}/qtbase/mkspecs/modules/qt_tool_qhelpgenerator.pri

post-install:
	# programs
.for p in ${PROGRAMS5}
	ln -sf ../lib/qt5/bin/$p ${PREFIX}/bin/$p-qt5
.endfor
	# shared libraries
.for l v in ${SHARED_LIBS}
	cd ${PREFIX}/lib; \
	f=qt5/lib$l.so.$v; \
	! test -f $$f || ln -sf $$f .
.endfor
.for l v in ${SHARED_LIBS-examples}
	cd ${PREFIX}/lib; \
	f=qt5/examples/*/*/lib$l.so.$v; \
	! test -f $$f || ln -sf $$f .
.endfor
	# pkg-config files
	@if [ -d ${QT_PKGCFGDIR} ]; then \
		for f in ${QT_PKGCFGDIR}/*; do \
			echo "mv -- $$f ${PREFIX}/lib/pkgconfig"; \
			mv -- "$$f" ${PREFIX}/lib/pkgconfig; \
		done; \
	fi
	# CMake files get values from QMake config "as is"
	find ${QT_CMAKEDIR} -type f -print0 | xargs -0 perl -pi \
		-e 's,\$$\(LOCALBASE\),${LOCALBASE},g;' \
		-e 's,\$$\(X11BASE\),${X11BASE},g;'
	# remove unpatched files
	find ${QT_BASEDIR}/mkspecs -name '*${PATCHORIG}' | xargs rm
	# often-used includes directory
	cd ${PREFIX}/lib/qt5 && ln -sf ../../include/X11/qt5 include

pre-configure:
	# Python and Ruby are used for building mainly, those paths
	# do not get into final packages.
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	ln -sf ${RUBY} ${WRKDIR}/bin/ruby

	cd ${WRKSRC}; ${MODPY_BIN_ADJ} \
		`find . -name '*.py'` \
		`egrep -Rl '(env |bin/)python' qtwebkit/Tools` \
		qtscript/src/3rdparty/javascriptcore/JavaScriptCore/wscript \
		qtwebkit/Source/WebCore/inspector/generate-inspector-protocol-version \
		qtwebkit/Source/WebCore/html/parser/create-html-entity-table

	cd ${WRKSRC}; ${MODRUBY_RUBY_ADJ} \
		`find qtwebkit -name '*.rb'` \
		qtwebkit/Tools/Scripts/check-for-webkit-framework-include-consistency \
		qtwebkit/Tools/Scripts/display-profiler-output \
		qtwebkit/Tools/Scripts/check-for-inappropriate-macros-in-external-headers \
		qtwebkit/Tools/Scripts/roll-over-ChangeLogs \
		qtwebkit/Tools/Scripts/check-for-inappropriate-files-in-framework \
		qtwebkit/Tools/Scripts/test-webkitruby \
		qtwebkit/Tools/Scripts/clean-header-guards \
		qtwebkit/Tools/Scripts/bencher \
		qtwebkit/Source/WebKit/WebKit.vcxproj/WebKitExportGenerator/make-export-file-generator \
		qtwebkit/Source/WebCore/make-export-file-generator \
		qtwebkit/Source/JavaScriptCore/JavaScriptCore.vcxproj/LLInt/LLIntDesiredOffsets/build-LLIntDesiredOffsets.sh \
		qtwebkit/Source/JavaScriptCore/JavaScriptCore.vcxproj/LLInt/LLIntAssembly/build-LLIntAssembly.sh

	cd ${WRKSRC}; perl -pi.otheradj \
		-e 's,/usr/bin/(env )?python\b,${MODPY_BIN},g;' \
		-e 's,/usr/bin/(env )?ruby\b,${RUBY},g;' \
		-e 's,(/usr)?/bin/(env )?bash\b,/bin/ksh,g;' \
		qtdeclarative/tests/auto/qml/runall.sh \
		qtmultimedia/tests/auto/unit/qwavedecoder/data/gendata.sh \
		qtscript/util/mkdist-javascriptcore \
		qtwebkit/Tools/BuildSlaveSupport/gtk/pulseaudio/run \
		qtwebkit/Tools/Scripts/old-run-webkit-tests \
		qtwebkit/Tools/Scripts/run-webkit-websocketserver \
		qtwebkit/Tools/Scripts/webkitpy/common/system/executive_unittest.py \
		qtxmlpatterns/src/xmlpatterns/parser/createParser.sh \
		qtgraphicaleffects/tools/pngdumper/pngdumper.sh

	cd ${WRKSRC}; perl -pi.symname \
		-e 's/^__/_/;' \
		qtscript/src/3rdparty/javascriptcore/JavaScriptCore/JavaScriptCore.order \
		qtwebkit/Source/JavaScriptCore/JavaScriptCore.order

	cd ${WRKSRC}/qtwebkit/Tools/qmake/config.tests; perl -pi.objdir \
		-e 's/^OBJECTS_DIR/#$$&/;' \
		*/*.pro

	@gccbasedir=`echo ${LOCALBASE}/lib/gcc/*-openbsd${OSREV}/${MODGCC4_VERSION}.*`; \
	cd ${WRKSRC}/qtwebkit/Source/WebCore; \
	for f in $$gccbasedir/include/*; do \
		echo ln -sf $$f >&2; \
		ln -sf $$f; \
	done;

.include <bsd.port.mk>
