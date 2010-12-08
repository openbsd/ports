# $OpenBSD: Makefile,v 1.1.1.1 2010/12/08 22:20:07 jeremy Exp $

COMMENT =	transaction support for DataMapper

DISTNAME =	dm-transactions-${VERSION}

RUN_DEPENDS =	databases/ruby-datamapper/core,${MODRUBY_FLAVOR}${DM_REL_VER_SPEC}

REGRESS_DEPENDS =	databases/ruby-do_sqlite3,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
