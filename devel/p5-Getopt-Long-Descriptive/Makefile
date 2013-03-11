# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:17 espie Exp $

COMMENT=		Getopt::Long, but simpler and more powerful

MODULES=		cpan
DISTNAME=		Getopt-Long-Descriptive-0.087
REVISION=		0
CATEGORIES=		devel
USE_GROFF =		Yes

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-Params-Validate \
			devel/p5-Sub-Exporter
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=	devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
