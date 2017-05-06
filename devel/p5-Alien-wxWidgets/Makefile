# $OpenBSD: Makefile,v 1.12 2017/05/06 08:53:45 benoit Exp $

COMMENT =	building, finding and using wxWidgets binaries

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Alien-wxWidgets-0.69
CATEGORIES =	devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	devel/p5-Module-Pluggable \
		x11/wxWidgets,-media \
		www/p5-LWP-Protocol-https

BUILD_DEPENDS =	${RUN_DEPENDS}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/inc/My/Build/Any_wx_config_Bakefile.pm

.include <bsd.port.mk>
