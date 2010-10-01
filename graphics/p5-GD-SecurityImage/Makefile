# $OpenBSD: Makefile,v 1.4 2010/10/01 22:08:56 jasper Exp $

COMMENT=	security image (captcha) generator

MODULES=	cpan
DISTNAME=	GD-SecurityImage-1.66
CATEGORIES=	graphics security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::graphics/p5-GD

CONFIGURE_STYLE=modbuild

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
