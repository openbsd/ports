# $OpenBSD: Makefile,v 1.3 2009/12/09 21:45:12 landry Exp $

COMMENT =	building, finding and using wxWidgets binaries

MODULES =	cpan
DISTNAME =	Alien-wxWidgets-0.47
CATEGORIES =	devel
CPAN_AUTHOR =	MBARBON

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE =	modbuild

pre-configure:
	${SUBST_CMD} ${WRKSRC}/inc/My/Build/Any_wx_config_Bakefile.pm

RUN_DEPENDS =	::x11/wxWidgets

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
