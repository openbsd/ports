# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:12 naddy Exp $

COMMENT =	building, finding and using wxWidgets binaries

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Alien-wxWidgets-0.67
CATEGORIES =	devel
REVISION =	0

# perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	devel/p5-Module-Pluggable \
		x11/wxWidgets,-media

BUILD_DEPENDS =	${RUN_DEPENDS}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/inc/My/Build/Any_wx_config_Bakefile.pm

.include <bsd.port.mk>
