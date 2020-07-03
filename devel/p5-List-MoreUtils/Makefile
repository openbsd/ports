# $OpenBSD: Makefile,v 1.29 2020/07/03 21:44:58 sthen Exp $

COMMENT =	provide the stuff missing in List::Util

DISTNAME =	List-MoreUtils-0.428
REVISION =	0

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl 5, Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Exporter-Tiny>=0.038 \
			devel/p5-List-MoreUtils-XS>=0.426
TEST_DEPENDS =		devel/p5-Test-LeakTrace

PKG_ARCH =		*

# Do not use Config::AutoConf to figure out that we can load XS modules.
# Reduces amount of bundled 3rd party code, makes review easier.
post-extract:
	rm -rf -- ${WRKSRC}/inc

.include <bsd.port.mk>
