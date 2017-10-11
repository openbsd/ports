# $OpenBSD: Makefile,v 1.71 2017/10/11 15:53:48 jeremy Exp $

COMMENT=	create, alter and inspect Matroska files

DISTNAME=	mkvtoolnix-9.7.1
REVISION=	1
CATEGORIES=	multimedia x11
MASTER_SITES=	${HOMEPAGE}sources/
EXTRACT_SUFX=	.tar.xz

HOMEPAGE =	https://www.bunkus.org/videotools/mkvtoolnix/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	FLAC boost_filesystem-mt boost_regex-mt boost_system-mt \
		c ebml m magic matroska ogg pthread vorbis z ${COMPILER_LIBCXX}

MODULES=	devel/gettext \
		lang/ruby

MODRUBY_RUNDEP=	No

COMPILER =	gcc

LIB_DEPENDS=	audio/flac \
		audio/libogg \
		audio/libvorbis \
		devel/boost \
		devel/libmagic \
		multimedia/libmatroska>=1.4.5 \
		textproc/libebml>=1.3.4

MAKE_ENV+=	V=1

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ARGS=	--disable-optimization \
		--with-boost-date-time=boost_date_time-mt \
		--with-boost-filesystem=boost_filesystem-mt \
		--with-boost-libdir=${LOCALBASE}/lib \
		--with-boost-regex=boost_regex-mt \
		--with-boost-system=boost_system-mt \
		--without-curl
CPPFLAGS=	-I${LOCALBASE}/include
LDFLAGS=	-L${LOCALBASE}/lib

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+= --disable-gui
.else
MODULES+=	x11/qt5
WANTLIB+=	Qt5Concurrent Qt5Core Qt5Gui Qt5Network Qt5Widgets
RUN_DEPENDS+=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic
CPPFLAGS+=	-I${X11BASE}/include
LDFLAGS+=	-L${X11BASE}/lib -L${MODQT5_LIBDIR}
.endif

CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS}" \
		LDFLAGS="${LDFLAGS}"

# XXX does not build with our pugixml (it's too new)
CONFIGURE_ENV +=ac_cv_header_pugixml_hpp=no

# avoid hidden build dep on gtest
CONFIGURE_ENV +=ac_cv_lib_gtest_main_main=no

NO_TEST=	Yes

do-build:
	@cd ${WRKSRC} && \
		env -i ${MAKE_ENV} ${RUBY} ./drake -j${MAKE_JOBS} \
		${MAKE_FLAGS}

do-install:
	@cd ${WRKSRC} && \
		env -i ${MAKE_ENV} ${RUBY} ./drake \
		DESTDIR=${WRKINST} install

.include <bsd.port.mk>
