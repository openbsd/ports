# $OpenBSD: Makefile,v 1.6 2010/11/15 00:22:54 espie Exp $

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

WANTLIB =	pq>=2

MODULES =	lang/ruby

LIB_DEPENDS =	databases/postgresql
RUN_DEPENDS =	databases/ruby-sequel,${FLAVOR} \
		databases/ruby-pg,${FLAVOR}
BUILD_DEPENDS =	${RUN_DEPENDS}

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
