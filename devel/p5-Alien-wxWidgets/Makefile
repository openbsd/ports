COMMENT =	building, finding and using wxWidgets binaries

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Alien-wxWidgets-0.69
REVISION =	2

CATEGORIES =	devel

# perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =	devel/p5-Module-Pluggable \
		x11/wxWidgets \
		www/p5-LWP-Protocol-https

BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	devel/p5-Test-Pod
# needs at least version 1.00
#TEST_DEPENDS +=	devel/p5-Pod-Coverage

pre-configure:
	${SUBST_CMD} ${WRKSRC}/inc/My/Build/Any_wx_config_Bakefile.pm

.include <bsd.port.mk>
