# $OpenBSD: Makefile,v 1.14 2020/07/03 21:44:52 sthen Exp $

COMMENT =	manipulate file metadata

DISTNAME =	File-Attributes-0.04
REVISION =	6

CATEGORIES =	devel

MAINTAINER =	Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Best>=0.06 \
			devel/p5-Module-Pluggable \
			devel/p5-YAML \
			devel/p5-YAML-Syck
TEST_DEPENDS =		devel/p5-Directory-Scratch>=0.05 \
			devel/p5-Test-Pod>=1.14 \
			devel/p5-Test-Pod-Coverage>=1.04

CONFIGURE_STYLE =	modinst

PKG_ARCH =		*

# modinst uses devel/p5-Module-Install, ensure we do not use inc
post-extract:
	rm -rf -- ${WRKDIST}/inc

.include <bsd.port.mk>
