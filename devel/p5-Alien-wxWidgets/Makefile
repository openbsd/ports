# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:26 ajacoutot Exp $

COMMENT =	building, finding and using wxWidgets binaries

MODULES =	cpan
DISTNAME =	Alien-wxWidgets-0.47
REVISION =	0
CATEGORIES =	devel
CPAN_AUTHOR =	MBARBON
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE =	modbuild

pre-configure:
	${SUBST_CMD} ${WRKSRC}/inc/My/Build/Any_wx_config_Bakefile.pm

RUN_DEPENDS =	x11/wxWidgets

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
