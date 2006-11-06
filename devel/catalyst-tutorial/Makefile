# $OpenBSD: Makefile,v 1.3 2006/11/06 21:27:35 sturm Exp $

COMMENT=	"catalyst packages for the tutorial"
MAINTAINER=	Marc Espie <espie@openbsd.org>

CATEGORIES=	devel perl5 www
DISTFILES=
DISTNAME=	catalyst-tutorial-0.1

NO_BUILD=	"nothing to build"
NO_REGRESS=	"fat chance"

do-install:
	# nothing to do	

# Public domain
PERMIT_DISTFILES_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::www/p5-Catalyst-Devel \
		::databases/p5-DBIx-Class \
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
		::www/p5-Catalyst-Plugin-Static-Simple \
		::databases/p5-DBD-SQLite \
		::textproc/p5-Catalyst-View-TT
.include <bsd.port.mk>
