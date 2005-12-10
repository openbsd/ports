# $OpenBSD: Makefile,v 1.11 2005/12/10 13:38:13 steven Exp $

COMMENT=	"perl module for accessing NNTP articles"

DISTNAME=	News-Article-1.27
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	news perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=News/}

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-PGP-Sign-*:security/p5-PGP-Sign
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

PKG_ARCH= *

.include <bsd.port.mk>
