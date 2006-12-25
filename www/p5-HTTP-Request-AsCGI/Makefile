# $OpenBSD: Makefile,v 1.3 2006/12/25 13:40:28 simon Exp $

COMMENT=	"setup CGI environment from HTTP::Request"

DISTNAME=	HTTP-Request-AsCGI-0.5
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www

MAINTAINER=	Simon Dassow <simon@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
 
RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::www/p5-libwww

.include <bsd.port.mk>
