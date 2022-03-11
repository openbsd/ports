COMMENT=	session framework for catalyst

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Plugin-Session-0.41
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	devel/p5-Module-Install-AuthorTests
RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		devel/p5-Moose \
		devel/p5-MooseX-Emulate-Class-Accessor-Fast \
		devel/p5-MRO-Compat \
		devel/p5-Object-Signature
TEST_DEPENDS=	devel/p5-Test-Deep \
		devel/p5-Test-Exception \
		security/p5-Catalyst-Plugin-Authentication \
		www/p5-Catalyst-Plugin-Session-State-Cookie \
		devel/p5-Test-WWW-Mechanize-Catalyst

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
