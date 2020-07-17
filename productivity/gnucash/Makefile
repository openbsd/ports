# $OpenBSD: Makefile,v 1.122 2020/07/17 19:03:41 ajacoutot Exp $

BROKEN =		doesn't build with new devel/gwenhywfar

COMMENT =		personal and small-business financial-accounting software

GNOME_PROJECT =		gnucash
GNOME_VERSION =		3.11
EXTRACT_SUFX =		.tar.bz2

DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			gnucash-docs-${GNOME_VERSION}.tar.gz

SHARED_LIBS +=  gnc-core-utils       1.1      # unknown
SHARED_LIBS +=  gnc-module           1.0      # unknown
SHARED_LIBS +=  gnc-backend-xml-utils 1.0     # unknown
SHARED_LIBS +=  gnc-backend-sql      1.0      # unknown
SHARED_LIBS +=  gnc-gnome            1.0      # unknown

CATEGORIES =		productivity

HOMEPAGE =		https://www.gnucash.org/

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} aqbanking atk-1.0 boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_locale-mt boost_regex-mt
WANTLIB += boost_system-mt c cairo cairo-gobject dbi gc gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-3 guile-2.2 gwenhywfar harfbuzz iconv icudata icui18n
WANTLIB += icuuc intl javascriptcoregtk-4.0 lzma m ofx osp pango-1.0
WANTLIB += pangocairo-1.0 secret-1 soup-2.4 webkit2gtk-4.0 xml2
WANTLIB += xslt z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gnucash/}

MODULES =		devel/dconf \
			devel/cmake \
			x11/gnome

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache yelp

BUILD_DEPENDS =		databases/libdbi-drivers,-sqlite3 \
			devel/gtest

RUN_DEPENDS =		databases/libdbi-drivers,-sqlite3

# gnc-fq-helper(1)
RUN_DEPENDS +=		converters/p5-DateManip \
			misc/p5-Finance-Quote

LIB_DEPENDS =		databases/libdbi \
			devel/boost \
			devel/gwenhywfar \
			devel/libofx \
			lang/guile2 \
			productivity/aqbanking \
			www/webkitgtk4

CONFIGURE_ARGS =	-DENABLE_BINRELOC=OFF \
			-DCOMPILE_GSCHEMAS=OFF \
			-DGNC_SHELL=/bin/sh

# XXX make sure guile2 headers are picked up first (over guile1);
# cannot use CPPFLAGS/CFLAGS since they get appended last
CONFIGURE_ENV +=	"CC=${CC} -I${LOCALBASE}/include/guile/2.2"
CONFIGURE_ENV +=	"CXX=${CXX} -I${LOCALBASE}/include/guile/2.2"

# XXX not picked up from config.h
CFLAGS +=		-DHAVE_SCANF_LLD

CXXFLAGS +=		-Wno-error

MAKE_ENV =		GUILE_AUTO_COMPILE=0

DOC_DIR =		${WRKDIR}/gnucash-docs-${GNOME_VERSION}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/libgnucash/core-utils/gnc-path.c

post-configure:
	cd ${DOC_DIR} && ${SETENV} ${CONFIGURE_ENV} MKDIR_P="mkdir -p" \
		/bin/sh ./configure

post-build:
	cd ${DOC_DIR} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}

post-install:
	cd ${DOC_DIR} && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} install
# requires hardcoded gnucash sources path to work
	rm ${PREFIX}/bin/gnucash-valgrind
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${PREFIX}${SYSCONFDIR}/gnucash ${PREFIX}/share/examples/
	rmdir ${PREFIX}${SYSCONFDIR}

.include <bsd.port.mk>
