# $OpenBSD: Makefile,v 1.27 2014/07/09 17:14:11 jeremy Exp $

COMMENT =	faster SELECTs when using ruby-sequel with ruby-pg

DISTNAME =	sequel_pg-1.6.9
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	pq>=2

MODULES =	lang/ruby

LIB_DEPENDS =	databases/postgresql
RUN_DEPENDS =	databases/ruby-sequel,${MODRUBY_FLAVOR}>=3.39.0 \
		databases/ruby-pg,${MODRUBY_FLAVOR}>=0.8.0
BUILD_DEPENDS =	${RUN_DEPENDS}

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
