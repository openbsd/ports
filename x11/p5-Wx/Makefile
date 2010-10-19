# $OpenBSD: Makefile,v 1.5 2010/10/19 08:13:59 espie Exp $

COMMENT =	interface to the wxWidgets cross-platform GUI toolkit

MODULES =	cpan
DISTNAME =	Wx-0.92
REVISION =	1
CATEGORIES =	x11 devel
CPAN_AUTHOR =	MBARBON
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	::devel/p5-Alien-wxWidgets \
		::devel/p5-ExtUtils-XSpp

LIB_DEPENDS =	::x11/wxWidgets
WANTLIB += pthread stdc++ wx_base wx_base_net wx_base_xml wx_gtk2_adv
WANTLIB += wx_gtk2_aui wx_gtk2_core wx_gtk2_html wx_gtk2_richtext
WANTLIB += wx_gtk2_stc wx_gtk2_xrc

BUILD_DEPENDS =	${RUN_DEPENDS}

# remove -lpthread once ExtUtils::MakeMaker is fixed
CONFIGURE_ARGS=	LIBS="-lpthread -lstdc++ -L${LOCALBASE}/lib -lwx_base_net -lwx_base_xml -lwx_gtk2_adv -lwx_gtk2_aui -lwx_gtk2_core -lwx_gtk2_html -lwx_gtk2_richtext -lwx_gtk2_stc -lwx_gtk2_xrc"

.include <bsd.port.mk>
