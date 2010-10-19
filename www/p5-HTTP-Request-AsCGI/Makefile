# $OpenBSD: Makefile,v 1.8 2010/10/19 08:02:56 espie Exp $

COMMENT=	setup CGI environment from HTTP::Request

DISTNAME=	HTTP-Request-AsCGI-1.2
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes

RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::www/p5-libwww

.include <bsd.port.mk>
