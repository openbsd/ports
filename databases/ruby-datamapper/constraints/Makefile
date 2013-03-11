# $OpenBSD: Makefile,v 1.5 2013/03/11 02:52:08 espie Exp $

COMMENT =	DataMapper plugin constraining relationships

DISTNAME =	dm-constraints-${VERSION}
REVISION =	2

RUN_DEPENDS =	databases/ruby-datamapper/core,${MODRUBY_FLAVOR}${DM_REL_VER_SPEC} \
		databases/ruby-datamapper/migrations,${MODRUBY_FLAVOR}${DM_REL_VER_SPEC}

TEST_DEPENDS =	databases/ruby-do_sqlite3,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
