# $OpenBSD: Makefile,v 1.2 2011/03/14 17:53:38 jeremy Exp $

COMMENT =	access a PostgreSQL database from JRuby

V =		9.0-801
DISTNAME =	jdbc-postgres-${V:S/-/./}
CATEGORIES =	databases

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby
FLAVOR =	jruby

SUBST_VARS =	DISTNAME V
CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
