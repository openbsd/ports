# $OpenBSD: Makefile,v 1.8 2011/01/06 04:24:22 jeremy Exp $

COMMENT =	model factory for DataMapper

DISTNAME =	dm-sweatshop-${VERSION}
REVISION =	0

RUN_DEPENDS =	databases/ruby-datamapper/core,${MODRUBY_FLAVOR}${DM_REL_VER_SPEC} \
		textproc/ruby-randexp,${MODRUBY_FLAVOR}>=0.1.5,<0.2

REGRESS_DEPENDS =	databases/ruby-datamapper/validations,${MODRUBY_FLAVOR} \
			databases/ruby-do_sqlite3,${MODRUBY_FLAVOR} \
			devel/ruby-parsetree,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
