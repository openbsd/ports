COMMENT =		personal and small-business financial-accounting software

GNOME_PROJECT =		gnucash
GNOME_VERSION =		5.14
EXTRACT_SUFX =		.tar.bz2

SHARED_LIBS +=  gnc-core-utils       1.2      # unknown
SHARED_LIBS +=  gnc-module           1.1      # unknown
SHARED_LIBS +=  gnc-backend-xml-utils 1.1     # unknown
SHARED_LIBS +=  gnc-backend-sql      1.1      # unknown
SHARED_LIBS +=  gnc-gnome            1.1      # unknown

CATEGORIES =		productivity

HOMEPAGE =		https://www.gnucash.org/

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} aqbanking atk-1.0 boost_atomic-mt
WANTLIB += boost_chrono-mt boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_locale-mt boost_program_options-mt boost_regex-mt
WANTLIB += boost_system-mt boost_thread-mt c cairo cairo-gobject
WANTLIB += dbi gc gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gtk-3 guile-3.0 gwengui-gtk3 gwenhywfar
WANTLIB += harfbuzz icui18n icuuc intl javascriptcoregtk-4.1 m
WANTLIB += ofx pango-1.0 pangocairo-1.0 secret-1 soup-3.0 webkit2gtk-4.1
WANTLIB += xml2 xslt z

COMPILER =		base-clang ports-gcc base-gcc

SITES =			${SITE_SOURCEFORGE:=gnucash/}

MODULES =		devel/dconf \
			devel/cmake \
			x11/gnome

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache

BUILD_DEPENDS =		databases/libdbi-drivers,-sqlite3 \
			devel/gtest \
			devel/swig

RUN_DEPENDS =		databases/libdbi-drivers,-sqlite3 \
			productivity/gnucash-docs

# gnc-fq-helper(1)
RUN_DEPENDS +=		converters/p5-DateManip \
			misc/p5-Finance-Quote

LIB_DEPENDS =		databases/libdbi \
			devel/boehm-gc \
			devel/boost \
			devel/gwenhywfar \
			devel/libofx \
			lang/guile3 \
			productivity/aqbanking \
			www/webkitgtk4,webkitgtk41

CONFIGURE_ARGS =	-DENABLE_BINRELOC=OFF \
			-DCOMPILE_GSCHEMAS=OFF \
			-DGNC_SHELL=/bin/sh

# XXX make sure guile3 headers are picked up first (over guile1 or guile2);
# cannot use CPPFLAGS/CFLAGS since they get appended last
CONFIGURE_ENV +=	"CC=${CC} -I${LOCALBASE}/include/guile/3.0"
CONFIGURE_ENV +=	"CXX=${CXX} -I${LOCALBASE}/include/guile/3.0"

# XXX not picked up from config.h
CFLAGS +=		-DHAVE_SCANF_LLD

CXXFLAGS +=		-Wno-error

MAKE_ENV =		GUILE_AUTO_COMPILE=0

DEBUG_PACKAGES =	${BUILD_PACKAGES}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/libgnucash/core-utils/gnc-path.c

post-install:
# requires hardcoded gnucash sources path to work
	rm ${PREFIX}/bin/gnucash-valgrind
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${PREFIX}${SYSCONFDIR}/gnucash ${PREFIX}/share/examples/
	rmdir ${PREFIX}${SYSCONFDIR}

.include <bsd.port.mk>
