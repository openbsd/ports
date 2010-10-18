# $OpenBSD: Makefile,v 1.3 2010/10/18 18:13:14 espie Exp $

COMMENT=	simple calculations with RGB colors

MODULES=	cpan
DISTNAME=	Color-Calc-1.05
CATEGORIES=	graphics
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Params-Validate \
		::graphics/p5-Graphics-ColorNames-WWW

.include <bsd.port.mk>
