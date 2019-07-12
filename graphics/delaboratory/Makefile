# $OpenBSD: Makefile,v 1.14 2019/07/12 20:46:57 sthen Exp $

COMMENT =	color correction utility for digital images
DISTNAME =	delaboratory-0.8
CATEGORIES =	graphics x11
REVISION =	6

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c iconv lzma m tiff wx_baseu-3.0
WANTLIB += wx_baseu_net-3.0 wx_baseu_xml-3.0 wx_gtk3u_adv-3.0
WANTLIB += wx_gtk3u_core-3.0 wx_gtk3u_html-3.0 wx_gtk3u_qa-3.0
WANTLIB += wx_gtk3u_xrc-3.0 xml2 z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	https://distfiles.nl/

LIB_DEPENDS =	converters/libiconv \
		textproc/libxml \
		x11/wxWidgets,-main>=3.0.4

RUN_DEPENDS =	graphics/dcraw

USE_GMAKE =	Yes
MAKE_FLAGS =	CXX="${CXX}" OPTFLAGS="${CXXFLAGS}"

NO_TEST =	Yes

post-patch:
	sed -i "s,-Ofast,,g" ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/delaboratory ${PREFIX}/bin

.include <bsd.port.mk>
