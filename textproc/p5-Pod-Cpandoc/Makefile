# $OpenBSD: Makefile,v 1.3 2019/03/10 01:06:51 afresh1 Exp $

COMMENT =	perldoc that works for modules you don't have installed
DISTNAME =	Pod-Cpandoc-0.16
CATEGORIES =	textproc

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	security/p5-IO-Socket-SSL>=1.56 \
		security/p5-Net_SSLeay>=1.49

.include <bsd.port.mk>
