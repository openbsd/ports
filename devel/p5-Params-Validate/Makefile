# $OpenBSD: Makefile,v 1.6 2002/07/10 20:48:13 avsm Exp $

COMMENT=	"perl module to validate function/method parameters"

DISTNAME=	Params-Validate-0.06
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Attribute/}

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=	:p5-Attribute-Handlers-*:devel/p5-Attribute-Handlers
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
