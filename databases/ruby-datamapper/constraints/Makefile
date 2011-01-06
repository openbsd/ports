# $OpenBSD: Makefile,v 1.2 2011/01/06 04:24:22 jeremy Exp $

COMMENT =	DataMapper plugin constraining relationships

DISTNAME =	dm-constraints-${VERSION}
REVISION =	0

RUN_DEPENDS =	databases/ruby-datamapper/core,${MODRUBY_FLAVOR}${DM_REL_VER_SPEC} \
		databases/ruby-datamapper/migrations,${MODRUBY_FLAVOR}${DM_REL_VER_SPEC}

REGRESS_DEPENDS =	databases/ruby-do_sqlite3,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
