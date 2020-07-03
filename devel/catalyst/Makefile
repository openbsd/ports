# $OpenBSD: Makefile,v 1.13 2020/07/03 21:44:38 sthen Exp $

COMMENT=		catalyst development bundle

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Task-Catalyst-1.90
REVISION =		2
PKGNAME=		catalyst-1.90
CATEGORIES=		devel www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Devel \
		www/p5-Catalyst-Runtime \
		devel/p5-Params-Validate \
		www/p5-Catalyst-Log-Log4perl \
		devel/p5-Date-Calc \
		www/p5-Catalyst-Plugin-HTML-Widget \
		devel/p5-Catalyst-Plugin-StackTrace \
		www/p5-Catalyst-Plugin-Prototype \
		www/p5-Catalyst-Plugin-Singleton \
		www/p5-Catalyst-Plugin-DefaultEnd \
		www/p5-Catalyst-Plugin-SubRequest \
		www/p5-Catalyst-Plugin-Session \
		www/p5-Catalyst-Plugin-Session-Store-File \
		www/p5-Catalyst-Plugin-Session-State-Cookie \
		www/p5-Catalyst-Plugin-Session-State-URI \
		security/p5-Catalyst-Plugin-Authentication \
		security/p5-Catalyst-Plugin-Authentication-Store-DBIC \
		security/p5-Catalyst-Plugin-Authentication-Store-Htpasswd \
		security/p5-Catalyst-Plugin-Authorization-ACL \
		security/p5-Catalyst-Plugin-Authorization-Roles \
		www/p5-Catalyst-Plugin-I18N \
		www/p5-Catalyst-Plugin-XMLRPC \
		www/p5-Catalyst-Plugin-Pluggable \
                www/p5-Catalyst-Plugin-ConfigLoader \
		databases/p5-Catalyst-Model-DBIC-Schema \
		textproc/p5-Catalyst-View-TT \
		devel/p5-Test-WWW-Mechanize-Catalyst \
		www/p5-CGI-Simple \
		www/p5-Catalyst-Action-RenderView \
		databases/p5-DBD-SQLite 

NO_TEST=	no need to

.include <bsd.port.mk>
