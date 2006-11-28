# $OpenBSD: Makefile,v 1.2 2006/11/28 11:09:52 espie Exp $

COMMENT=	"setup CGI environment from HTTP::Request"

DISTNAME=	HTTP-Request-AsCGI-0.5
CATEGORIES=	www

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
 
RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::www/p5-libwww

.include <bsd.port.mk>
