# $OpenBSD: Makefile,v 1.2 2004/07/04 23:40:05 mjc Exp $

COMMENT=	"smart return-value object"

DISTNAME=	Class-ReturnValue-0.52
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

HOMEPAGE=	http://search.cpan.org/dist/Class-ReturnValue/
MAINTAINER=	Michael Coulter <mjc@openbsd.org>

BUILD_DEPENDS=	:p5-Devel-StackTrace-*:devel/p5-Devel-StackTrace

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

CONFIGURE_STYLE=perl
CONFIGURE_ARGS=	--no-prompts

.include <bsd.port.mk>
