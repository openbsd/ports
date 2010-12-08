# $OpenBSD: Makefile,v 1.1.1.1 2010/12/08 22:19:21 jeremy Exp $

COMMENT =	DataMapper plugin constraining relationships

DISTNAME =	dm-constraints-${VERSION}

RUN_DEPENDS =	databases/ruby-datamapper/core,${MODRUBY_FLAVOR}${DM_REL_VER_SPEC} \
		databases/ruby-datamapper/migrations,${MODRUBY_FLAVOR}${DM_REL_VER_SPEC}

REGRESS_DEPENDS =	databases/ruby-do_sqlite3,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
