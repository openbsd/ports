COMMENT =	GUI for ebook2cw

DISTNAME =	ebook2cwgui-0.1.2

SITES =		https://fkurz.net/ham/ebook2cw/

CATEGORIES =	comms hamradio

HOMEPAGE =	https://fkurz.net/ham/ebook2cw.html#gui

MAINTAINER =	Enzo Nicosia <me@katolaz.net>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += 	c m
WANTLIB += 	${COMPILER_LIBCXX}
WANTLIB +=	wx_baseu-3.2 wx_baseu_net-3.2 wx_baseu_xml-3.2 wx_gtk3u_core-3.2
WANTLIB +=	wx_gtk3u_html-3.2 wx_gtk3u_qa-3.2 wx_gtk3u_xrc-3.2

LIB_DEPENDS =	x11/wxWidgets

RUN_DEPENDS =	comms/ebook2cw

USE_GMAKE =	Yes

COMPILER =	base-clang ports-gcc

MAKE_FLAGS =	DESTDIR=${PREFIX} CXXFLAGS="${CXXFLAGS}"
FAKE_FLAGS =	DESTDIR=${WRKINST}${PREFIX}
NO_TEST =	yes
DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
