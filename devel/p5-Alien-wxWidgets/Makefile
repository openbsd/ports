COMMENT =	building, finding and using wxWidgets binaries

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Alien-wxWidgets-0.69
REVISION =	6

CATEGORIES =	devel x11

MAINTAINER =	Antoine Jacoutot <ajacoutot@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	modbuild

BUILD_DEPENDS =	x11/wxWidgets,-media

RUN_DEPENDS =	devel/p5-Module-Pluggable \
		www/p5-LWP-Protocol-https

TEST_DEPENDS =	devel/p5-Test-Pod
# needs at least version 1.00
#TEST_DEPENDS +=	devel/p5-Pod-Coverage

CONFIGURE_ARGS =	--wxWidgets-build=0

pre-configure:
	${SUBST_CMD} ${WRKSRC}/inc/My/Build/Any_wx_config_Bakefile.pm

.include <bsd.port.mk>
