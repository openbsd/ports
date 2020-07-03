# $OpenBSD: Makefile,v 1.24 2020/07/03 21:46:08 sthen Exp $

BROKEN =	GDI.c:12636:17: error: no member named 'GetPixel' in 'wxColour'

COMMENT =	interface to the wxWidgets cross-platform GUI toolkit

MODULES =	cpan
DISTNAME =	Wx-0.9932
CATEGORIES =	x11 devel
CPAN_AUTHOR =	MDOOTSON
REVISION =	2

# perl
PERMIT_PACKAGE =	Yes

WANTLIB += c m perl pthread ${COMPILER_LIBCXX} wx_base wx_base_net wx_base_xml
WANTLIB += wx_gtk2_adv wx_gtk2_aui wx_gtk2_core wx_gtk2_html wx_gtk2_media
WANTLIB += wx_gtk2_richtext wx_gtk2_stc wx_gtk2_xrc

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS =	devel/p5-Alien-wxWidgets \
		devel/p5-ExtUtils-XSpp

RUN_DEPENDS =	devel/p5-Alien-wxWidgets \
		devel/p5-ExtUtils-XSpp

LIB_DEPENDS =	x11/wxWidgets,-media

# remove -lpthread once ExtUtils::MakeMaker is fixed
CONFIGURE_ARGS=	LIBS="-lpthread -lstdc++ -L${LOCALBASE}/lib -lwx_base_net -lwx_base_xml -lwx_gtk2_adv -lwx_gtk2_aui -lwx_gtk2_core -lwx_gtk2_html -lwx_gtk2_richtext -lwx_gtk2_stc -lwx_gtk2_xrc"

.include <bsd.port.mk>
