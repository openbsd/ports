# $OpenBSD: Makefile,v 1.10 2014/11/17 14:08:46 benoit Exp $

COMMENT=	security image (captcha) generator

MODULES=	cpan
DISTNAME =	GD-SecurityImage-1.72
CATEGORIES=	graphics security

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	graphics/p5-GD

CONFIGURE_STYLE=modbuild
USE_GROFF =	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
