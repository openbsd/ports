# $OpenBSD: Makefile,v 1.6 2014/03/24 09:02:43 jasper Exp $

COMMENT=		Storable based binary logs

DISTNAME=		Log-Dispatch-Binlog-0.02
REVISION=		1

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-Log-Dispatch
TEST_DEPENDS=		devel/p5-Test-use-ok \
			devel/p5-Test-TempDir

.include <bsd.port.mk>
