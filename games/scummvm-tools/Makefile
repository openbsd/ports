# $OpenBSD: Makefile,v 1.37 2019/10/14 09:19:11 jsg Exp $

COMMENT=	collection of various tools for scummvm
V=		2.1.0
DISTNAME=	scummvm-tools-${V}
CATEGORIES=	games
MASTER_SITES=	http://www.scummvm.org/frs/scummvm-tools/${V}/

HOMEPAGE=	http://www.scummvm.org/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC c freetype iconv m mad ogg
WANTLIB += png vorbis vorbisenc vorbisfile wx_baseu-3.0 wx_baseu_net-3.0
WANTLIB += wx_baseu_xml-3.0 wx_gtk3u_adv-3.0 wx_gtk3u_core-3.0
WANTLIB += wx_gtk3u_html-3.0 wx_gtk3u_qa-3.0 wx_gtk3u_xrc-3.0 z

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
		${WRKBUILD}/de{cine,gob,kyra,prince,scumm,sword2} \
		${WRKBUILD}/extract_mohawk \
		${WRKBUILD}/construct_mohawk \
		${WRKBUILD}/gob_loadcalc \
		${WRKBUILD}/create_sjisfnt \
		${PREFIX}/bin

.include <bsd.port.mk>
