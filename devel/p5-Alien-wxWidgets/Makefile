# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:13 espie Exp $

COMMENT =	building, finding and using wxWidgets binaries

MODULES =	cpan
DISTNAME =	Alien-wxWidgets-0.47
REVISION =	0
CATEGORIES =	devel
CPAN_AUTHOR =	MBARBON
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	modbuild

pre-configure:
	${SUBST_CMD} ${WRKSRC}/inc/My/Build/Any_wx_config_Bakefile.pm

RUN_DEPENDS =	x11/wxWidgets

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
