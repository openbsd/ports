COMMENT=	stack trace for catalyst

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Plugin-StackTrace-0.12
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Devel-StackTrace \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime

TEST_DEPENDS=	devel/p5-Term-Size-Any

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
