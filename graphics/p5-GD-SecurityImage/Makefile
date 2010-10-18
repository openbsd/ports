# $OpenBSD: Makefile,v 1.5 2010/10/18 18:13:14 espie Exp $

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
USE_GROFF =	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
