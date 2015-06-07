# $OpenBSD: Makefile,v 1.13 2015/06/07 09:46:14 ajacoutot Exp $

COMMENT =	interface to the wxWidgets cross-platform GUI toolkit

MODULES =	cpan
DISTNAME =	Wx-0.9927
CATEGORIES =	x11 devel
CPAN_AUTHOR =	MDOOTSON

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m pthread stdc++ wx_base wx_base_net wx_base_xml wx_gtk2_adv
WANTLIB += wx_gtk2_aui wx_gtk2_core wx_gtk2_html wx_gtk2_richtext
WANTLIB += wx_gtk2_stc wx_gtk2_xrc wx_gtk2_media

RUN_DEPENDS =	devel/p5-Alien-wxWidgets>=0.67 \
		devel/p5-ExtUtils-XSpp

LIB_DEPENDS =	x11/wxWidgets,-media

BUILD_DEPENDS =	${RUN_DEPENDS}

# remove -lpthread once ExtUtils::MakeMaker is fixed
CONFIGURE_ARGS=	LIBS="-lpthread -lstdc++ -L${LOCALBASE}/lib -lwx_base_net -lwx_base_xml -lwx_gtk2_adv -lwx_gtk2_aui -lwx_gtk2_core -lwx_gtk2_html -lwx_gtk2_richtext -lwx_gtk2_stc -lwx_gtk2_xrc"

.include <bsd.port.mk>
