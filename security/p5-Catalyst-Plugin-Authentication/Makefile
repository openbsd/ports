COMMENT=	Catalyst authentication framework

DISTNAME=	Catalyst-Plugin-Authentication-0.10023
CATEGORIES=	security

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	devel/p5-Class-Inspector \
		devel/p5-MRO-Compat \
		devel/p5-Moose \
		devel/p5-MooseX-Emulate-Class-Accessor-Fast \
		devel/p5-Try-Tiny \
		devel/p5-namespace-autoclean \
		textproc/p5-String-RewritePrefix \
		www/p5-Catalyst-Runtime \
		www/p5-Catalyst-Plugin-Session
TEST_DEPENDS=	devel/p5-Test-EOL \
		devel/p5-Test-Exception \
		devel/p5-Test-NoTabs \
		devel/p5-Test-WWW-Mechanize-Catalyst \
		security/p5-Digest-SHA1 \
		www/p5-Catalyst-Plugin-Session-State-Cookie

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_ARGS+=	--skipdeps

.include <bsd.port.mk>
