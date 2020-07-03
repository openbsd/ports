# $OpenBSD: Makefile,v 1.5 2020/07/03 21:45:48 sthen Exp $

COMMENT =	perldoc that works for modules you don't have installed
DISTNAME =	Pod-Cpandoc-0.16
CATEGORIES =	textproc
REVISION =	0

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	security/p5-IO-Socket-SSL>=1.56 \
		security/p5-Net_SSLeay>=1.49

.include <bsd.port.mk>
