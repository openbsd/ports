# $OpenBSD: Makefile,v 1.1.1.1 2004/05/17 19:36:22 sturm Exp $

COMMENT=	"force number of words to singular or plural"

DISTNAME=	Lingua-EN-Inflect-Number-1.1
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Lingua/}

CONFIGURE_STYLE=perl

RUN_DEPENDS=	::textproc/p5-Lingua-EN-Inflect
BUILD_DEPENDS=	${RUN_DEPENDS}

PKG_ARCH=	*

.include <bsd.port.mk>
