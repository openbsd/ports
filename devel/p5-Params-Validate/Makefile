# $OpenBSD: Makefile,v 1.31 2013/03/11 10:50:20 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	perl module to validate function/method parameters

MODULES=	cpan
DISTNAME=	Params-Validate-0.95
REVISION=	3
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += c

TEST_DEPENDS=	devel/p5-Test-Taint>=1.04 \
			devel/p5-Readonly>=1.03 \
			devel/p5-Readonly-XS>=1.05

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
