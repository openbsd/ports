# $OpenBSD: Makefile,v 1.4 2010/09/23 22:30:25 jeremy Exp $

SHARED_ONLY =	Yes

COMMENT =	PostgreSQL database interface for ruby

DISTNAME =	pg-0.8.0
PKGNAME =	ruby-${DISTNAME}
REVISION =	0
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# Ruby/BSD License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=ruby-pg/}

MODULES =	lang/ruby

LIB_DEPENDS =	pq.>=2::databases/postgresql \
		${MODRUBY_LIB_DEPENDS}

CONFIGURE_STYLE = ruby gem

.include <bsd.port.mk>
