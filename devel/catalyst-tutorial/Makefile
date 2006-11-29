# $OpenBSD: Makefile,v 1.7 2006/11/29 08:23:29 espie Exp $

COMMENT=	"catalyst packages for the tutorial"
MAINTAINER=	Marc Espie <espie@openbsd.org>

MODULES=	cpan
CATEGORIES=	devel www
DISTNAME=	Task-Catalyst-Tutorial-0.02
PKGNAME=	catalyst-tutorial-0.02p1v0

# Public domain
PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::www/p5-Catalyst-Devel \
		::databases/p5-DBIx-Class \
		::databases/p5-DBIx-Class-HTMLWidget \
		::databases/p5-Catalyst-Model-DBIC-Schema \
		::security/p5-Catalyst-Plugin-Authentication \
		::security/p5-Catalyst-Plugin-Authentication-Store-DBIC \
		::security/p5-Catalyst-Plugin-Authorization-ACL \
		::security/p5-Catalyst-Plugin-Authorization-Roles \
		::www/p5-Catalyst-Plugin-ConfigLoader \
		::www/p5-Catalyst-Plugin-HTML-Widget \
		::www/p5-Catalyst-Plugin-Session \
		::www/p5-Catalyst-Plugin-Session-State-Cookie \
		::www/p5-Catalyst-Plugin-Session-Store-FastMmap \
		::devel/p5-Catalyst-Plugin-StackTrace \
		::devel/p5-Catalyst-Manual \
		::www/p5-Catalyst-Plugin-Static-Simple \
		::databases/p5-DBD-SQLite \
		::textproc/p5-Catalyst-View-TT

.include <bsd.port.mk>
