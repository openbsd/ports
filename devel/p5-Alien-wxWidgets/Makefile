# $OpenBSD: Makefile,v 1.8 2013/03/21 01:34:46 sthen Exp $

COMMENT =	building, finding and using wxWidgets binaries

MODULES =	cpan
DISTNAME =	Alien-wxWidgets-0.62
CATEGORIES =	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	modbuild

pre-configure:
	${SUBST_CMD} ${WRKSRC}/inc/My/Build/Any_wx_config_Bakefile.pm

RUN_DEPENDS =	x11/wxWidgets

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
