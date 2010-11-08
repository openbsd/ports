# $OpenBSD: Makefile,v 1.5 2010/11/08 23:28:53 jeremy Exp $

COMMENT =	faster SELECTs when using ruby-sequel with ruby-pg

DISTNAME =	sequel_pg-1.0.1
REVISION =	1
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
RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-sequel-*:databases/ruby-sequel,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-pg-*:databases/ruby-pg,${FLAVOR}
BUILD_DEPENDS =	${RUN_DEPENDS}

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
