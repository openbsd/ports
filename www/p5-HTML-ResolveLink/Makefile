# $OpenBSD: Makefile,v 1.5 2013/03/11 11:44:45 espie Exp $

COMMENT=	resolve relative links in (X)HTML into absolute URI

MODULES=	cpan
DISTNAME=	HTML-ResolveLink-0.05
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-HTML-Parser \
		www/p5-URI

.include <bsd.port.mk>
