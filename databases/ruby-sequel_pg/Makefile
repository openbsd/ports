# $OpenBSD: Makefile,v 1.4 2010/10/26 21:42:14 jeremy Exp $

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

WANTLIB =	pq.>=2

MODULES =	lang/ruby

LIB_DEPENDS =	::databases/postgresql
RUN_DEPENDS =	::databases/ruby-sequel \
		::databases/ruby-pg
BUILD_DEPENDS =	${RUN_DEPENDS}

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
