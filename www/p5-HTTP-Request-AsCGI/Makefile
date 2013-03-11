# $OpenBSD: Makefile,v 1.11 2013/03/11 11:44:46 espie Exp $

COMMENT=	setup CGI environment from HTTP::Request

DISTNAME=	HTTP-Request-AsCGI-1.2
REVISION=	0
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
USE_GROFF =	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		www/p5-libwww

.include <bsd.port.mk>
