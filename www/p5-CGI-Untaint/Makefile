# $OpenBSD: Makefile,v 1.3 2006/01/17 11:09:29 steven Exp $

COMMENT=	"taint checking and input validation from web forms"

DISTNAME=	CGI-Untaint-1.26
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=CGI/}

CONFIGURE_STYLE=perl

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Universal-exports

PKG_ARCH=	*

.include <bsd.port.mk>
