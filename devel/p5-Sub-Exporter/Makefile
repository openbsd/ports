# $OpenBSD: Makefile,v 1.13 2019/07/12 20:45:07 sthen Exp $

COMMENT =	exporter on steroids

DISTNAME =	Sub-Exporter-0.987
CATEGORIES =	devel

MAINTAINER = Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	devel/p5-Data-OptList>=0.100 \
		devel/p5-Params-Util>=0.14 \
		devel/p5-Sub-Install>=0.92

TEST_DEPENDS =	devel/p5-Package-Generator

.include <bsd.port.mk>
