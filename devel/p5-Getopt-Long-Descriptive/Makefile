# $OpenBSD: Makefile,v 1.4 2010/12/01 14:08:12 sthen Exp $

COMMENT=		Getopt::Long, but simpler and more powerful

MODULES=		cpan
DISTNAME=		Getopt-Long-Descriptive-0.087
CATEGORIES=		devel
USE_GROFF =		Yes

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		devel/p5-Params-Validate \
			devel/p5-Sub-Exporter
BUILD_DEPENDS=		${RUN_DEPENDS}
REGRESS_DEPENDS=	devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
