# $OpenBSD: Makefile,v 1.9 2015/06/07 09:45:49 ajacoutot Exp $

COMMENT =	building, finding and using wxWidgets binaries

MODULES =	cpan
DISTNAME =	Alien-wxWidgets-0.67
CATEGORIES =	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	devel/p5-Module-Pluggable \
		x11/wxWidgets

BUILD_DEPENDS =	${RUN_DEPENDS}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/inc/My/Build/Any_wx_config_Bakefile.pm

.include <bsd.port.mk>
