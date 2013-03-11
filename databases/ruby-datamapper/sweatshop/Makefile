# $OpenBSD: Makefile,v 1.11 2013/03/11 02:52:08 espie Exp $

COMMENT =	model factory for DataMapper

DISTNAME =	dm-sweatshop-${VERSION}
REVISION =	2

RUN_DEPENDS =	databases/ruby-datamapper/core,${MODRUBY_FLAVOR}${DM_REL_VER_SPEC} \
		textproc/ruby-randexp,${MODRUBY_FLAVOR}>=0.1.5,<0.2

TEST_DEPENDS =	databases/ruby-datamapper/validations,${MODRUBY_FLAVOR} \
			databases/ruby-do_sqlite3,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
