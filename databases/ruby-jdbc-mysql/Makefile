# $OpenBSD: Makefile,v 1.2 2011/03/14 17:52:59 jeremy Exp $

COMMENT =	access a MySQL database from JRuby

V =		5.1.13
DISTNAME =	jdbc-mysql-${V}
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
