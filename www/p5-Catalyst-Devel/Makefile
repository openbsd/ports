COMMENT=	Catalyst development Tools

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Devel-1.42
CATEGORIES=	www

HOMEPAGE=	http://www.catalystframework.org/

# Perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	devel/p5-File-ShareDir-Install

RUN_DEPENDS=	devel/p5-Config-General>=2.42 \
		devel/p5-File-ChangeNotify>=0.07 \
		devel/p5-File-Copy-Recursive \
		devel/p5-File-ShareDir \
		devel/p5-Module-Install>=1.02 \
		devel/p5-Moose \
		devel/p5-MooseX-Emulate-Class-Accessor-Fast \
		devel/p5-Path-Class>=0.09 \
		devel/p5-namespace-autoclean \
		devel/p5-namespace-clean \
		textproc/p5-Template>=2.14 \
		www/p5-Catalyst-Action-RenderView>=0.10 \
		www/p5-Catalyst-Plugin-ConfigLoader>=0.30 \
		www/p5-Catalyst-Plugin-Static-Simple>=0.28 \
		www/p5-Catalyst-Runtime>=5.90001

TEST_DEPENDS=	devel/p5-IPC-Run3 \
		devel/p5-Test-Fatal

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_ARGS+=--skipdeps
.include <bsd.port.mk>
