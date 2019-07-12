# $OpenBSD: Makefile,v 1.10 2019/07/12 20:44:57 sthen Exp $

COMMENT=	safe guarding for IPC::Run

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	IPC-Run-SafeHandles-0.04
CATEGORIES=	devel
REVISION =	0

# perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE = modinst

RUN_DEPENDS = devel/p5-List-MoreUtils

BUILD_DEPENDS += devel/p5-List-MoreUtils

TEST_DEPENDS=	devel/p5-Test-Pod-Coverage \
			devel/p5-Test-Pod

.include <bsd.port.mk>
