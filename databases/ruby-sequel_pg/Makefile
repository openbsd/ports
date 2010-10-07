# $OpenBSD: Makefile,v 1.3 2010/10/07 15:06:08 jeremy Exp $

SHARED_ONLY =	Yes

COMMENT =	faster SELECTs when using ruby-sequel with ruby-pg

DISTNAME =	sequel_pg-1.0.1
PKGNAME =	ruby-${DISTNAME}
REVISION =	0
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m pq.>=2

MODULES =	lang/ruby

LIB_DEPENDS =	::databases/postgresql \
		${MODRUBY_LIB_DEPENDS}
RUN_DEPENDS =	::databases/ruby-sequel \
		::databases/ruby-pg
BUILD_DEPENDS =	${RUN_DEPENDS}

CONFIGURE_STYLE = ruby gem

.include <bsd.port.mk>
