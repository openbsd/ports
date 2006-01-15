# $OpenBSD: Makefile,v 1.1.1.1 2006/01/15 16:11:18 sturm Exp $

COMMENT=	"retrieve GET/POST parameters from HTTP requests"

DISTNAME=	HTTP-Request-Params-1.01
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

MAINTAINER=	Sam Smith <s@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTTP/}

REGRESS_DEPENDS=${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::mail/p5-Email-MIME-Modifier \
		::www/p5-libwww

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
