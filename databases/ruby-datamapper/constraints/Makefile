# $OpenBSD: Makefile,v 1.3 2011/09/16 08:48:04 espie Exp $

COMMENT =	DataMapper plugin constraining relationships

DISTNAME =	dm-constraints-${VERSION}
REVISION =	1

RUN_DEPENDS =	databases/ruby-datamapper/core,${MODRUBY_FLAVOR}${DM_REL_VER_SPEC} \
		databases/ruby-datamapper/migrations,${MODRUBY_FLAVOR}${DM_REL_VER_SPEC}

REGRESS_DEPENDS =	databases/ruby-do_sqlite3,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
