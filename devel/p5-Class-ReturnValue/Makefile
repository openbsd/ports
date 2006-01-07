# $OpenBSD: Makefile,v 1.3 2006/01/07 20:21:16 steven Exp $

COMMENT=	"smart return-value object"

DISTNAME=	Class-ReturnValue-0.53
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Michael Coulter <mjc@openbsd.org>

BUILD_DEPENDS=	:p5-Devel-StackTrace-*:devel/p5-Devel-StackTrace

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

CONFIGURE_STYLE= 	perl
CONFIGURE_ARGS= 	--no-prompts

PKG_ARCH=	*

.include <bsd.port.mk>
