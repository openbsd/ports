# $OpenBSD: Makefile,v 1.19 2020/07/03 21:44:38 sthen Exp $

COMMENT =	catalyst packages for the tutorial
MAINTAINER =	Marc Espie <espie@openbsd.org>

MODULES =	cpan
PKG_ARCH =	*
CATEGORIES =	devel www
DISTNAME =	Task-Catalyst-Tutorial-0.06
PKGNAME =	catalyst-tutorial-0.06
EPOCH =		0
REVISION =	1

# Public domain
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	www/p5-Catalyst-Runtime \
		www/p5-Catalyst-Devel \
		databases/p5-DBIx-Class \
		databases/p5-DBIx-Class-HTMLWidget \
		databases/p5-Catalyst-Model-DBIC-Schema \
		security/p5-Catalyst-Plugin-Authentication \
		security/p5-Catalyst-Authentication-Store-DBIx-Class \
		security/p5-Catalyst-Plugin-Authentication-Store-DBIC \
		security/p5-Catalyst-Plugin-Authorization-ACL \
		security/p5-Catalyst-Plugin-Authorization-Roles \
		www/p5-Catalyst-Controller-HTML-FormFu \
		www/p5-Catalyst-Plugin-ConfigLoader \
		www/p5-Catalyst-Plugin-Session \
		www/p5-Catalyst-Plugin-Session-State-Cookie \
		www/p5-Catalyst-Plugin-Session-Store-FastMmap \
		devel/p5-Catalyst-Plugin-StackTrace \
		devel/p5-Catalyst-Manual \
		www/p5-Catalyst-Plugin-Static-Simple \
		www/p5-Catalyst-Plugin-HTML-Widget \
		databases/p5-DBD-SQLite \
		textproc/p5-Catalyst-View-TT

CONFIGURE_ARGS =--skipdeps

.include <bsd.port.mk>
