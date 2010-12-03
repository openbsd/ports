# $OpenBSD: Makefile,v 1.7 2010/12/03 11:45:37 ajacoutot Exp $

COMMENT=	security image (captcha) generator

MODULES=	cpan
DISTNAME=	GD-SecurityImage-1.66
REVISION=	0
CATEGORIES=	graphics security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	graphics/p5-GD

CONFIGURE_STYLE=modbuild
USE_GROFF =	Yes

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
