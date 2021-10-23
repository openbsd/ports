# $OpenBSD: Makefile,v 1.110 2021/10/11 15:16:39 rsadowski Exp $

COMMENT=	create, alter and inspect Matroska files

DISTNAME=	mkvtoolnix-62.0.0

CATEGORIES=	multimedia x11

HOMEPAGE=	https://www.bunkus.org/videotools/mkvtoolnix/

MAINTAINER=	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += FLAC Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Multimedia
WANTLIB += Qt5Network Qt5Widgets c cmark dvdread ebml fmt gmp
WANTLIB += iconv intl m matroska ogg pugixml vorbis z

MASTER_SITES=	https://www.bunkus.org/videotools/mkvtoolnix/sources/

EXTRACT_SUFX=	.tar.xz

MODULES=	x11/qt5 \
		lang/ruby

MODRUBY_RUNDEP=	No

# C++17
COMPILER=	base-clang ports-gcc

# need to add this for gcc
# revisit when gcc drops it
EXTRA_ports-gcc=	-lstdc++fs
LDFLAGS+=		${EXTRA_${CHOSEN_COMPILER}}

BUILD_DEPENDS=	devel/boost \
		devel/gettext,-tools \
		devel/gtest \
		textproc/docbook \
		textproc/docbook-xsl

LIB_DEPENDS=	audio/flac \
		audio/libogg \
		audio/libvorbis \
		devel/fmt \
		devel/gettext,-runtime \
		devel/gmp \
		devel/libdvdread \
		multimedia/libmatroska>=1.6.2 \
		textproc/cmark \
		textproc/libebml>=1.4.0 \
		textproc/pugixml \
		x11/qt5/qtmultimedia

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.71

CONFIGURE_ARGS=	--disable-optimization \
		--disable-update-check \
		--disable-qt6 \
		--with-boost=${LOCALBASE} \
		--with-boost-filesystem=boost_filesystem \
		--with-boost-system=boost_system \
		--with-boost-regex=boost_regex \
		--with-docbook-xsl-root=${LOCALBASE}/share/xsl/docbook

MAKE_ENV+=	V=1
CPPFLAGS+=	-I${LOCALBASE}/include -I${X11BASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib -L${X11BASE}/lib -L${MODQT5_LIBDIR}

CONFIGURE_ENV+=	LCONVERT="${LOCALBASE}/lib/qt5/bin/lconvert" \
		CPPFLAGS="${CPPFLAGS}" \
		LDFLAGS="${LDFLAGS}"

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
