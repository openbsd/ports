COMMENT=	create, alter and inspect Matroska files

DISTNAME=	mkvtoolnix-88.0

CATEGORIES=	multimedia x11

HOMEPAGE=	https://mkvtoolnix.download

MAINTAINER=	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC GL Qt6Concurrent Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Multimedia Qt6Network Qt6Svg Qt6Widgets boost_filesystem
WANTLIB += boost_system c cmark dvdread ebml fmt gmp iconv intl
WANTLIB += m matroska ogg pugixml vorbis z

SITES=		https://mkvtoolnix.download/sources/

EXTRACT_SUFX=	.tar.xz

MODULES=	x11/qt6 \
		lang/ruby

MODRUBY_RUNDEP=	No

# C++17
COMPILER=	base-clang ports-gcc

# need to add this for gcc
# revisit when gcc drops it
EXTRA_ports-gcc=	-lstdc++fs
LDFLAGS+=		${EXTRA_${CHOSEN_COMPILER}}

BUILD_DEPENDS=	devel/gettext,-tools \
		devel/gtest \
		textproc/docbook \
		textproc/docbook-xsl \
		textproc/nlohmann-json

LIB_DEPENDS=	devel/boost \
		audio/flac \
		audio/libogg \
		audio/libvorbis \
		devel/fmt \
		devel/gettext,-runtime \
		devel/gmp \
		devel/libdvdread \
		multimedia/libmatroska>=1.7.1 \
		textproc/cmark \
		textproc/libebml>=1.4.4 \
		textproc/pugixml \
		x11/qt6/qtmultimedia \
		x11/qt6/qtsvg

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.71

CONFIGURE_ARGS=	--disable-optimization \
		--disable-update-check \
		--disable-precompiled-headers \
		--with-boost=${LOCALBASE} \
		--with-docbook-xsl-root=${LOCALBASE}/share/xsl/docbook \
		--with-qmake6=${MODQT6_QMAKE}

MAKE_ENV+=	V=1
CPPFLAGS+=	-I${LOCALBASE}/include -I${X11BASE}/include -I${MODQT6_INCDIR} 
LDFLAGS+=	-L${LOCALBASE}/lib -L${X11BASE}/lib -L${MODQT6_LIBDIR}

CONFIGURE_ENV+=	LCONVERT="${LOCALBASE}/lib/qt6/bin/lconvert" \
		QMAKE6="${MODQT6_QMAKE}" \
		CPPFLAGS="${CPPFLAGS}" \
		LDFLAGS="${LDFLAGS}" \
		ac_cv_path_PANDOC=

pre-patch:
	@cd ${WRKSRC}/src/mkvtoolnix-gui/jobs/program_runner/ && \
	cp linux_program_runner.cpp unix_program_runner.cpp && \
	cp linux_program_runner.h unix_program_runner.h

do-build:
	@cd ${WRKSRC} && \
		env -i ${MAKE_ENV} ${RAKE} -j${MAKE_JOBS} ${MAKE_FLAGS}

do-install:
	@cd ${WRKSRC} && \
		env -i ${MAKE_ENV} ${RAKE} DESTDIR=${WRKINST} install

do-test:
	@cd ${WRKSRC} && \
		env -i ${MAKE_ENV} ${RAKE} tests:run_unit

.include <bsd.port.mk>
