# $OpenBSD: Makefile,v 1.1.1.1 2006/11/04 19:22:26 espie Exp $

COMMENT=	"setup CGI environment from HTTP::Request"

DISTNAME=	HTTP-Request-AsCGI-0.5
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTTP/}
 
RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::www/p5-libwww
REGRESS_DEPENDS=${RUN_DEPENDS}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
