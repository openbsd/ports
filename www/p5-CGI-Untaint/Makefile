# $OpenBSD: Makefile,v 1.1.1.1 2004/05/22 15:48:20 sturm Exp $

COMMENT=	"taint checking and input validation from web forms"

DISTNAME=	CGI-Untaint-1.00
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
