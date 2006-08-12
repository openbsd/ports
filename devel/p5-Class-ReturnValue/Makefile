# $OpenBSD: Makefile,v 1.4 2006/08/12 09:37:56 sturm Exp $

COMMENT=	"smart return-value object"

DISTNAME=	Class-ReturnValue-0.53
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel perl5

MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Class/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Devel-StackTrace-*:devel/p5-Devel-StackTrace

CONFIGURE_STYLE= 	perl
CONFIGURE_ARGS= 	--no-prompts

PKG_ARCH=	*

.include <bsd.port.mk>
