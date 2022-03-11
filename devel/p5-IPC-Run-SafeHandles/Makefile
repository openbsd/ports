COMMENT=	safe guarding for IPC::Run

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	IPC-Run-SafeHandles-0.04
CATEGORIES=	devel
REVISION =	1

# perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE = modinst

RUN_DEPENDS = devel/p5-List-MoreUtils

BUILD_DEPENDS += devel/p5-List-MoreUtils

TEST_DEPENDS=	devel/p5-Test-Pod-Coverage \
			devel/p5-Test-Pod

.include <bsd.port.mk>
