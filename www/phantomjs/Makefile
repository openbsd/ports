# $OpenBSD: Makefile,v 1.16 2017/08/24 09:45:23 sthen Exp $

USE_WXNEEDED =		Yes

ONLY_FOR_ARCHS =	${CXX11_ARCHS}
# nojunk: qmake include parser is bogus, c.f. x11/qt4
DPB_PROPERTIES =	nojunk parallel

COMMENT =		headless WebKit scriptable with a JavaScript API

MASTER_SITES=		${_MASTER_SITE_FREEBSD}
DISTNAME =		phantomjs-2.1.1
REVISION =		2
DISTFILES =		ariya-${DISTNAME}_GH0.tar.gz \
			Vitallium-phantomjs-3rdparty-win-19051aa_GH0.tar.gz \
			Vitallium-qtbase-b5cc008_GH0.tar.gz \
			Vitallium-qtwebkit-e7b7433_GH0.tar.gz

CATEGORIES =		www
HOMEPAGE =		http://phantomjs.org/
MAINTAINER =		Francisco de Borja Lopez Rio <borja@codigo23.net>

# BSD, but statically linked to patched LGPL'ed qt5 and webkit
PERMIT_PACKAGE_CDROM =	Yes

COMPILER =		gcc
MODULES =		devel/gettext lang/python lang/ruby

WANTLIB +=		${COMPILER_LIBCXX} X11 Xau Xdmcp c crypto \
			execinfo expat fontconfig glib-2.0 freetype \
			graphite2 harfbuzz iconv icudata icui18n icuuc \
			intl lzma m pcre proxy pthread pthread-stubs \
			sqlite3 ssl webp xml2 xcb xslt z

MODPY_RUNDEP =		No
MODRUBY_RUNDEP =	No

# MODGCC4_CPPLIBDEP will be empty unless gcc4.port.mk is pulled in (i.e.
# empty on a base=clang arch)
LIB_DEPENDS =		${MODGCC4_CPPLIBDEP} \
			databases/sqlite3 \
			devel/glib2 \
			devel/harfbuzz \
			devel/libexecinfo \
			devel/pcre \
			graphics/graphite2 \
			graphics/libwebp \
			net/libproxy \
			textproc/icu4c \
			textproc/libxml \
			textproc/libxslt

BUILD_DEPENDS =		devel/bison \
			devel/gperf \
			devel/libsoup \
			multimedia/gstreamer1/core \
			multimedia/gstreamer1/plugins-base \
			x11/xkbcommon

QT5_CONFIGURE_ARGS =	-c++11 \
			-no-journald \
			-rpath \
			-system-harfbuzz \
			-system-sqlite \
			-system-xcb \
			-verbose \
			-I${X11BASE}/include \
			-R${X11BASE}/lib \
			-L${X11BASE}/lib

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
# AVX:    Sandy Bridge/Haswell, but not all models. AMD Bulldozer/Jaguar.
# SSE4.2: Nehalem, Silvermont Atom, AMD Bulldozer/Jaguar.
# SSE4.1: Core 2 (Penryn), Nehalem, Silvermont Atom, AMD Bulldozer/Jaguar.
# SSSE3:  Core 2 Duo, Atom, AMD Bulldozer/Bobcat.
# SSE3:   missing on very early 64-bit AMD.
QT5_CONFIGURE_ARGS +=	-no-sse4.1 -no-sse4.2 -no-avx -no-avx2
QT5_CONFIGURE_ARGS +=	-no-ssse3 -no-sse3
.endif

.if ${MACHINE_ARCH} == "i386"
QT5_CONFIGURE_ARGS +=	-no-sse2
.endif

.include <bsd.port.arch.mk>

post-extract:
	rmdir ${WRKSRC}/src/qt/{3rdparty,qtbase,qtwebkit}
	mv ${WRKDIR}/phantomjs-3rdparty-win-19051aa ${WRKSRC}/src/qt/3rdparty
	mv ${WRKDIR}/qtbase-b5cc008 ${WRKSRC}/src/qt/qtbase && \
	mv ${WRKDIR}/qtwebkit-e7b7433 ${WRKSRC}/src/qt/qtwebkit
	mkdir ${WRKSRC}/src/qt/qtbase/.git ${WRKSRC}/src/qt/qtwebkit/.git
	rm ${WRKSRC}/src/qt/qtwebkit/Source/WebCore/DerivedSources.cpp
	find ${WRKSRC} -name \*.orig -print0 | xargs -0 rm -f

post-patch:
	@gccbasedir=`ecpp -print-search-dirs | awk '/^install:/{print $$2}'`; \
	perl ${PORTSDIR}/infrastructure/bin/pkg_subst \
		-D OPENBSD_INCDIR_PREPEND="$${gccbasedir}include" \
		${WRKSRC}/src/qt/qtbase/mkspecs/openbsd-g++/qmake.conf

MAKE_ENV += OSTYPE=openbsd \
	CC=cc CXX=c++ LINK_C=cc LINK=c++ \
	PYTHON=${MODPY_BIN} RUBY=${RUBY} \
	MAKE=make \
	MAKEFLAGS="-j ${MAKE_JOBS} PYTHON=${MODPY_BIN} RUBY=${RUBY}" \
	EXTRA_CPPFLAGS="-DLOCALBASE=\\\"${LOCALBASE}\\\" -DX11BASE=\\\"${X11BASE}\\\"" \

pre-build:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	ln -sf ${RUBY} ${WRKDIR}/bin/ruby

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		QT5_CONFIGURE_ARGS="${QT5_CONFIGURE_ARGS}" \
		${MODPY_BIN} build.py --confirm

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/phantomjs ${PREFIX}/bin/phantomjs
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/phantomjs
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/phantomjs
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/phantomjs
	${INSTALL_DATA} ${WRKSRC}/LICENSE.BSD ${PREFIX}/share/doc/phantomjs

do-test:
	cd ${WRKSRC}/test && ${MODPY_BIN} run-tests.py

.include <bsd.port.mk>
