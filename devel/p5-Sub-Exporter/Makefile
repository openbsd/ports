# $OpenBSD: Makefile,v 1.11 2014/05/10 03:06:31 afresh1 Exp $

COMMENT =	exporter on steroids

DISTNAME =	Sub-Exporter-0.987
CATEGORIES =	devel

MAINTAINER = Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

RUN_DEPENDS =	devel/p5-Data-OptList>=0.100 \
		devel/p5-Params-Util>=0.14 \
		devel/p5-Sub-Install>=0.92

TEST_DEPENDS =	devel/p5-Package-Generator

.include <bsd.port.mk>
