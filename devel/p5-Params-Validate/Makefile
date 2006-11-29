# $OpenBSD: Makefile,v 1.17 2006/11/29 08:23:30 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"perl module to validate function/method parameters"

MODULES=	cpan
DISTNAME=	Params-Validate-0.78
CATEGORIES=	devel

MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

REGRESS_DEPENDS=	:p5-Test-Taint->=0.02:devel/p5-Test-Taint

.include <bsd.port.mk>
