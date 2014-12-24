# $OpenBSD: Makefile,v 1.8 2014/12/24 06:50:55 benoit Exp $

COMMENT =	Getopt::Long, but simpler and more powerful

MODULES =	cpan
DISTNAME =	Getopt-Long-Descriptive-0.098
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Params-Validate>=0.97 \
		devel/p5-Sub-Exporter>=0.972

TEST_DEPENDS =	devel/p5-Test-Warnings>=0.005 \
		devel/p5-Test-Fatal

.include <bsd.port.mk>
