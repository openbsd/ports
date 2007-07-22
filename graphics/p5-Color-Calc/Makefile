# $OpenBSD: Makefile,v 1.1.1.1 2007/07/22 16:05:18 simon Exp $

COMMENT=	simple calculations with RGB colors

MODULES=	cpan
DISTNAME=	Color-Calc-1.04
CATEGORIES=	graphics

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Params-Validate \
		::graphics/p5-Graphics-ColorNames-WWW

.include <bsd.port.mk>
