# $OpenBSD: Makefile,v 1.16 2006/01/08 16:20:49 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"perl module to validate function/method parameters"

DISTNAME=	Params-Validate-0.78
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Attribute/}

REGRESS_DEPENDS=	:p5-Test-Taint->=0.02:devel/p5-Test-Taint

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
