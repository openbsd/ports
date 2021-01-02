# $OpenBSD: Makefile,v 1.97 2021/01/02 22:06:00 jca Exp $

COMMENT=	create, alter and inspect Matroska files

DISTNAME=	mkvtoolnix-51.0.0
REVISION=	0

CATEGORIES=	multimedia x11

HOMEPAGE =	https://www.bunkus.org/videotools/mkvtoolnix/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC boost_filesystem-mt
WANTLIB += boost_system-mt c dvdread ebml fmt iconv intl m magic
WANTLIB += matroska ogg pcre2-8 pugixml vorbis z

MASTER_SITES=	https://www.bunkus.org/videotools/mkvtoolnix/sources/

EXTRACT_SUFX=	.tar.xz

MODULES=	lang/ruby

MODRUBY_RUNDEP=	No

# C++11 / C++14
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS=	devel/gettext,-tools \
		devel/gtest \
		textproc/docbook \
		textproc/docbook-xsl \
		x11/qt5/qttools

LIB_DEPENDS=	audio/flac \
		audio/libogg \
		audio/libvorbis \
		devel/boost \
		devel/fmt \
		devel/gettext,-runtime \
		devel/libdvdread \
		devel/libmagic \
		devel/pcre2 \
		multimedia/libmatroska>=1.6.2 \
		textproc/libebml>=1.4.0 \
		textproc/pugixml

MAKE_ENV+=	V=1

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ARGS=	--disable-optimization \
		--disable-update-check \
		--with-boost-date-time=boost_date_time-mt \
		--with-boost-filesystem=boost_filesystem-mt \
		--with-boost-libdir=${LOCALBASE}/lib \
		--with-boost-regex=boost_regex-mt \
		--with-boost-system=boost_system-mt \
		--with-docbook-xsl-root=${LOCALBASE}/share/xsl/docbook

CPPFLAGS=	-I${LOCALBASE}/include
LDFLAGS=	-L${LOCALBASE}/lib

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+= --disable-gui
.else
MODULES+=	x11/qt5
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Multimedia Qt5Network
WANTLIB += Qt5Widgets cmark
LIB_DEPENDS +=	x11/qt5/qtmultimedia \
		textproc/cmark
RUN_DEPENDS+=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic
CPPFLAGS+=	-I${X11BASE}/include
LDFLAGS+=	-L${X11BASE}/lib -L${MODQT5_LIBDIR}
CONFIGURE_ENV+=	LCONVERT="${LOCALBASE}/lib/qt5/bin/lconvert"
.endif

CONFIGURE_ENV+=	CPPFLAGS="${CPPFLAGS}" \
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
