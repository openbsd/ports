# $OpenBSD: Makefile,v 1.4 2007/05/05 17:44:52 simon Exp $

COMMENT=	"setup CGI environment from HTTP::Request"

DISTNAME=	HTTP-Request-AsCGI-0.5
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
 
RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::www/p5-libwww

.include <bsd.port.mk>
