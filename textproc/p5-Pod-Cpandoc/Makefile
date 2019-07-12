# $OpenBSD: Makefile,v 1.4 2019/07/12 20:50:05 sthen Exp $

COMMENT =	perldoc that works for modules you don't have installed
DISTNAME =	Pod-Cpandoc-0.16
CATEGORIES =	textproc

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	security/p5-IO-Socket-SSL>=1.56 \
		security/p5-Net_SSLeay>=1.49

.include <bsd.port.mk>
