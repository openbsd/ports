COMMENT =	Catalyst integration for HTML::FormFu

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Controller-HTML-FormFu-2.04
CATEGORIES =	www textproc

# Perl
PERMIT_PACKAGE =		Yes

BUILD_DEPENDS =		devel/p5-Task-Weaken

RUN_DEPENDS =		devel/p5-Config-Any \
			devel/p5-Moose \
			devel/p5-MooseX-Attribute-Chained \
			devel/p5-Task-Weaken \
			devel/p5-namespace-autoclean \
			textproc/p5-Regexp-Assemble \
			www/p5-Catalyst-Component-InstancePerContext \
			www/p5-HTML-FormFu>=0.07003

TEST_DEPENDS =		\
			devel/p5-Test-WWW-Mechanize>=1.16 \
			devel/p5-Test-WWW-Mechanize-Catalyst \
			textproc/p5-Catalyst-View-TT \
			www/p5-Catalyst-Action-RenderView \
			www/p5-Catalyst-Plugin-ConfigLoader \
			www/p5-Catalyst-Plugin-Session \
			www/p5-Catalyst-Plugin-Session-State-Cookie \
			www/p5-Catalyst-Plugin-Session-Store-File \
			www/p5-HTML-FormFu-MultiForm>=1.02

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
