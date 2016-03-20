# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:27 naddy Exp $

COMMENT=		Storable based binary logs

DISTNAME=		Log-Dispatch-Binlog-0.02
REVISION=		1

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Log-Dispatch
TEST_DEPENDS=		devel/p5-Test-use-ok \
			devel/p5-Test-TempDir

.include <bsd.port.mk>
