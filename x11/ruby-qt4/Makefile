# $OpenBSD: Makefile,v 1.6 2013/06/22 14:51:21 dcoppa Exp $

# /usr/bin/ld: CMakeFiles/smokeqtcore.dir/x_4.cpp.o(.gnu.linkonce.t._ZN13__smokeqtcore9x_QBuffer4x_25EPN5Smoke9StackItemE+0x54): cannot reach 00000d7d___dynamic_cast+0, recompile with -ffunction-sections
#/usr/bin/ld: CMakeFiles/smokeqtcore.dir/x_4.cpp.o(.gnu.linkonce.t._ZN13__smokeqtcore9x_QBuffer4x_25EPN5Smoke9StackItemE+0x54): cannot handle R_PARISC_PCREL17F for __dynamic_cast
BROKEN-hppa =	relocation error

SHARED_ONLY =		Yes

COMMENT =		ruby bindings for Qt4

V =			2.1.0
DISTNAME =		qt4-qtruby-${V}
PKGNAME =		qt4-${V}
REVISION =		0
CATEGORIES =		x11

SHARED_LIBS +=  cppparser                 0.0 # 3.0
SHARED_LIBS +=  qtruby4shared             0.0 # 2.0
SHARED_LIBS +=  smokebase                 0.0 # 3.0
SHARED_LIBS +=  smokeqtcore               0.0 # 3.0
SHARED_LIBS +=  smokeqtdbus               0.0 # 3.0
SHARED_LIBS +=  smokeqtgui                0.0 # 3.0
SHARED_LIBS +=  smokeqtmultimedia         0.0 # 3.0
SHARED_LIBS +=  smokeqtnetwork            0.0 # 3.0
SHARED_LIBS +=  smokeqtopengl             0.0 # 3.0
SHARED_LIBS +=  smokeqtscript             0.0 # 3.0
SHARED_LIBS +=  smokeqtsql                0.0 # 3.0
SHARED_LIBS +=  smokeqtsvg                0.0 # 3.0
SHARED_LIBS +=  smokeqttest               0.0 # 3.0
SHARED_LIBS +=  smokeqtuitools            0.0 # 3.0
SHARED_LIBS +=  smokeqtwebkit             0.0 # 3.0
SHARED_LIBS +=  smokeqtxml                0.0 # 3.0
SHARED_LIBS +=  smokeqtxmlpatterns        0.0 # 3.0

HOMEPAGE =		http://techbase.kde.org/Development/Languages/Ruby

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://files.rubyforge.vm.bytemark.co.uk/korundum/

MODULES =		x11/qt4 lang/ruby devel/cmake

WANTLIB += QtDBus QtGui QtMultimedia QtNetwork QtOpenGL QtScript
WANTLIB += QtSql QtSvg QtTest QtWebKit QtXml QtXmlPatterns c m
WANTLIB += ruby19 stdc++

BUILD_DEPENDS =		devel/automoc
LIB_DEPENDS =		x11/qt4

# ruby 1.8 not supported as it requires LD_PRELOAD hacks for pthreads
MODRUBY_HANDLE_FLAVORS = Yes	
FLAVORS =		ruby19
FLAVOR =		ruby19

CONFIGURE_ENV =		CXXFLAGS="-I${X11BASE}/include/" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib/"

CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX=${LOCALBASE} \
			-DRUBY_EXECUTABLE=${RUBY} \
			-DENABLE_SMOKE=on \
			-DENABLE_QTRUBY=on \
			-DENABLE_SMOKEKDE=off \
			-DENABLE_QYOTO=off \
			-DENABLE_KORUNDUM=off \
			-DENABLE_PYKDE4=off \
			-DENABLE_KROSSRUBY=off \
			-DENABLE_KROSSPYTHON=off \
			-DENABLE_KROSSJAVA=off \
			-DENABLE_KROSSFALCON=off

MAKE_FLAGS =		VERBOSE=1

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cmake/modules/FindRUBY.cmake

post-install:
	mv ${PREFIX}/bin/rbqt{,4}api
	mv ${PREFIX}/include/smoke{,qt4}.h
	rm ${PREFIX}/lib/ruby/site_ruby/${MODRUBY_LIBREV}/Qt.rb

.include <bsd.port.mk>
