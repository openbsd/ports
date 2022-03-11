COMMENT=		catalyst development bundle

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Task-Catalyst-4.02
PKGNAME=		catalyst-4.02
CATEGORIES=		devel www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	databases/p5-Catalyst-Model-DBIC-Schema \
		devel/p5-Catalyst-Manual \
		devel/p5-Catalyst-Plugin-StackTrace \
		devel/p5-local-lib \
		mail/p5-Catalyst-View-Email \
		security/p5-Catalyst-Authentication-Store-DBIx-Class \
		security/p5-Catalyst-Plugin-Authentication \
		textproc/p5-Catalyst-View-TT \
		www/p5-Catalyst-Action-REST>=0 \
		www/p5-Catalyst-ActionRole-ACL>=0 \
		www/p5-Catalyst-Authentication-Credential-HTTP \
		www/p5-Catalyst-Component-InstancePerContext \
		www/p5-Catalyst-Devel \
		www/p5-Catalyst-Model-Adaptor \
		www/p5-Catalyst-Plugin-I18N \
		www/p5-Catalyst-Plugin-Session \
		www/p5-Catalyst-Plugin-Session-State-Cookie \
		www/p5-Catalyst-Plugin-Session-Store-DBIC \
		www/p5-Catalyst-Plugin-Session-Store-File \
		www/p5-CatalystX-Component-Traits \
		www/p5-CatalystX-LeakChecker \
		www/p5-CatalystX-Profile \
		www/p5-CatalystX-REPL \
		www/p5-CatalystX-SimpleLogin \
		www/p5-FCGI \
		www/p5-FCGI-ProcManager \
		www/p5-Starman

NO_TEST=	no need to

.include <bsd.port.mk>
