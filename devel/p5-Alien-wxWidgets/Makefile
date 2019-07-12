# $OpenBSD: Makefile,v 1.14 2019/07/12 20:44:44 sthen Exp $

COMMENT =	building, finding and using wxWidgets binaries

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Alien-wxWidgets-0.69
REVISION =	0

CATEGORIES =	devel

# perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	devel/p5-Module-Pluggable \
		x11/wxWidgets,-media>=3.0.4 \
		www/p5-LWP-Protocol-https

BUILD_DEPENDS =	${RUN_DEPENDS}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/inc/My/Build/Any_wx_config_Bakefile.pm

.include <bsd.port.mk>
