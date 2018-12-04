# $OpenBSD: Makefile,v 1.32 2018/12/04 20:44:57 naddy Exp $

COMMENT=	collection of various tools for scummvm
V=		2.0.0
REVISION=	1
DISTNAME=	scummvm-tools-${V}
CATEGORIES=	games
MASTER_SITES=	http://www.scummvm.org/frs/scummvm-tools/${V}/

HOMEPAGE=	http://www.scummvm.org/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c freetype iconv m ogg ${COMPILER_LIBCXX} z FLAC mad png pthread vorbis \
			vorbisenc vorbisfile \
			wx_base_net wx_base wx_base_odbc wx_base_xml \
			wx_gtk2_adv wx_gtk2_aui wx_gtk2_core \
			wx_gtk2_dbgrid wx_gtk2_html wx_gtk2_qa \
			wx_gtk2_richtext wx_gtk2_xrc

NO_TEST=	Yes
USE_GMAKE=	Yes

# extract_prince uses C++11 std::to_string
COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	audio/flac \
		graphics/png \
		audio/libvorbis \
		audio/libmad \
		x11/wxWidgets

RUN_DEPENDS=	audio/lame \
		audio/vorbis-tools

CONFIGURE_STYLE=simple
CONFIGURE_ARGS+=--disable-boost
CONFIGURE_ENV+= CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"
MAKE_ENV=	CXXFLAGS="${CXXFLAGS}" CXX="${CXX}" VERBOSE_BUILD=1

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scummvm-tools
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/scummvm-tools	
	${INSTALL_DATA_DIR} ${PREFIX}/share/scummvm-tools
	${INSTALL_DATA} ${WRKSRC}/gui/media/{logo.jpg,detaillogo.jpg,tile.gif} \
	    ${PREFIX}/share/scummvm-tools	
	${INSTALL_PROGRAM} \
		${WRKBUILD}/scummvm-tools \
		${WRKBUILD}/scummvm-tools-cli \
		${WRKBUILD}/de{cine,kyra,scumm,sword2,gob,riven} \
		${WRKBUILD}/extract_mohawk \
		${WRKBUILD}/construct_mohawk \
		${WRKBUILD}/gob_loadcalc \
		${WRKBUILD}/create_sjisfnt \
		${PREFIX}/bin

.include <bsd.port.mk>
