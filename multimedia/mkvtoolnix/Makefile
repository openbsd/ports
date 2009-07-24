# $OpenBSD: Makefile,v 1.18 2009/07/24 14:37:23 sthen Exp $

COMMENT =	create, alter and inspect Matroska files

DISTNAME =	mkvtoolnix-2.9.5
PKGNAME =	${DISTNAME}p0
CATEGORIES =	multimedia x11

HOMEPAGE =	http://www.bunkus.org/videotools/mkvtoolnix/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c ebml expat m ogg stdc++ z

MASTER_SITES =	${HOMEPAGE}/sources/

EXTRACT_SUFX =	.tar.bz2

MODULES =	converters/libiconv
LIB_DEPENDS =	FLAC.>=7::audio/flac \
		bz2.>=10::archivers/bzip2 \
		lzo2::archivers/lzo2 \
		matroska:libmatroska->=0.8.1:multimedia/libmatroska \
		vorbis.>=5::audio/libvorbis \
		magic.>=1::devel/libmagic \
		boost_regex-mt.>=1::devel/boost

MAKE_FLAGS +=	V=1

USE_GMAKE =	Yes
USE_X11 =	Yes

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --enable-lzo \
		--enable-bz2 \
		--disable-qt \
		--with-flac \
		--with-boost-regex=boost_regex-mt
CONFIGURE_ENV =	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib \
		-lm -lstdc++ -pthread" \
		ac_cv_has_nl_langinfo=no

FLAVORS =	no_x11
FLAVOR ?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS += --disable-gui
.else
WANTLIB +=	pthread
LIB_DEPENDS +=	wx_base,wx_base_net,wx_base_odbc,wx_base_xml,wx_gtk2_adv,wx_gtk2_core,wx_gtk2_dbgrid,wx_gtk2_html,wx_gtk2_qa,wx_gtk2_xrc,wx_gtk2_aui,wx_gtk2_richtext:wxWidgets-gtk2->=2.6.3:x11/wxWidgets
CONFIGURE_ARGS += --enable-gui \
		--enable-wxwidgets
.endif

NO_REGRESS =    Yes

.include <bsd.port.mk>
