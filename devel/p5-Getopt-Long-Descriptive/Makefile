# $OpenBSD: Makefile,v 1.7 2014/05/11 16:22:30 afresh1 Exp $

COMMENT =	Getopt::Long, but simpler and more powerful

MODULES =	cpan
DISTNAME =	Getopt-Long-Descriptive-0.097
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Params-Validate>=0.97 \
		devel/p5-Sub-Exporter>=0.972

TEST_DEPENDS =	devel/p5-Test-Warnings>=0.005 \
		devel/p5-Test-Fatal

.include <bsd.port.mk>
