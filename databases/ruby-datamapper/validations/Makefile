# $OpenBSD: Makefile,v 1.10 2012/09/23 16:57:33 jeremy Exp $

COMMENT =	provides validations for DataMapper model classes

DISTNAME =	dm-validations-${VERSION}
REVISION =	2

RUN_DEPENDS =	databases/ruby-datamapper/core,${MODRUBY_FLAVOR}${DM_REL_VER_SPEC}

REGRESS_DEPENDS =	databases/ruby-do_sqlite3,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
