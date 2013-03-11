# $OpenBSD: Makefile,v 1.9 2013/03/11 11:10:54 espie Exp $

COMMENT=	security image (captcha) generator

MODULES=	cpan
DISTNAME=	GD-SecurityImage-1.66
REVISION=	1
CATEGORIES=	graphics security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	graphics/p5-GD

CONFIGURE_STYLE=modbuild
USE_GROFF =	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
