COMMENT=	role based authorization for Catalyst

DISTNAME=	Catalyst-Plugin-Authorization-Roles-0.09
CATEGORIES=	security
REVISION=	1

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	devel/p5-Set-Object \
		devel/p5-Universal-isa \
		security/p5-Catalyst-Plugin-Authentication
TEST_DEPENDS=devel/p5-Test-Exception

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
