# $OpenBSD: Makefile,v 1.30 2012/08/23 15:08:05 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	perl module to validate function/method parameters

MODULES=	cpan
DISTNAME=	Params-Validate-0.95
REVISION=	3
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += c

REGRESS_DEPENDS=	devel/p5-Test-Taint>=1.04 \
			devel/p5-Readonly>=1.03 \
			devel/p5-Readonly-XS>=1.05

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
