# $OpenBSD: Makefile,v 1.8 2014/12/26 15:41:58 nigel Exp $

COMMENT=	safe guarding for IPC::Run

MODULES=	cpan
DISTNAME =	IPC-Run-SafeHandles-0.04
CATEGORIES=	devel
REVISION =	0

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE = modinst

RUN_DEPENDS = devel/p5-List-MoreUtils

BUILD_DEPENDS += devel/p5-List-MoreUtils

TEST_DEPENDS=	devel/p5-Test-Pod-Coverage \
			devel/p5-Test-Pod

.include <bsd.port.mk>
